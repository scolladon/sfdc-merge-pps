'use strict';
const fs = require('fs');
const asyncReadFile = require('./lib/utils/async-read-file');
const asyncXmlParser = require('./lib/utils/async-xml-parser');
const xml2js = require('xml2js');
const mergePermission = require('./lib/utils/merge-permission-sections');

// To test : 
// node bin/smpps -p test/data/Admin.profile -p test/data/Integration.profile -p test/data/CustomerUser.profile -o test/data/Merged.profile

const permissionSections = {
  'applicationVisibilities' : ['application'],
  'categoryGroupVisibilities' : ['dataCategories'],
  'classAccesses' : ['apexClass'],
  'customPermissions' : ['name'],
  'externalDataSourceAccesses' : ['externalDataSource'],
  'fieldPermissions' : ['field'],
  'layoutAssignments' : ['layout','recordType'],
  'objectPermissions' : ['object'],
  'pageAccesses' : ['apexPage'],
  'recordTypeVisibilities' : ['recordType'],
  'tabVisibilities' : ['tab'],
  'userPermissions' : ['name'],
  'tabSettings' : ['tab']
}

// Plugin to merge package.xml.
module.exports = (config) => {

  // Check if we have enough config options
  if (typeof config.pps === 'undefined' || config.pps === null) {
    throw new Error('Not enough config options');
  }

  // The module return this promise
  // This is where the job is done
  return new Promise((resolve, reject) => {

  // Chain all pps given to the command line in that order
    config.pps.reduce((previousPromise, nextFile) => 
      previousPromise.then((files) =>
        new Promise((resolve,reject)=>
          asyncReadFile(nextFile) // read the content of the file
          .then(asyncXmlParser) // parse it to json
          .then(fileContent => {files.push(fileContent); resolve(files)}) // add the result and chain it
        )
      ), Promise.resolve([])
    )
    // Reduce the jsonified permission in order to apply merge to them
    .then(mergedPPSs => mergedPPSs.reduce((mergedPPS, aPPS) => {
        // first loop we will use the current Permission => no merge required :D
        if (Object.entries(mergedPPS).length === 0 && mergedPPS.constructor === Object) {
          return aPPS.content;
        }
        Object.keys(aPPS.content[aPPS.type]).filter(p=>permissionSections.hasOwnProperty(p))
        .forEach(p=>{
          mergedPPS[aPPS.type][p] = mergePermission(aPPS.content[aPPS.type][p] || [], mergedPPS[aPPS.type][p] || [], permissionSections[p]) 
        })
        return mergedPPS;
      }, {}))
    .then(pps => {
      // Build the permission file and write it to the file system where the output has been specified
      const builder = new xml2js.Builder({ 'xmldec': { 'version': '1.0', 'encoding': 'UTF-8' }, 'renderOpts': { 'pretty': true, 'indent': '    ', 'newline': '\r\n' } });
      fs.writeFileSync(config.output, builder.buildObject(pps));
      resolve(config.pps); // we are done
    }).catch(err =>
      reject(new Error(err))
    );
  });
};
