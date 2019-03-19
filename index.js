'use strict';
const fs = require('fs');
const asyncReadFile = require('./lib/utils/async-read-file');
const asyncXmlParser = require('./lib/utils/async-xml-parser');
const xml2js = require('xml2js');
const extendify = require('extendify');

// To test : 
// node bin/smpps -p test/data/Admin.profile -p test/data/SICo\ CRM\ -\ Integration.profile -o test/data/Test\ Merged.profile

// Plugin to merge package.xml.
module.exports = (config, logger) => {

  // Check if we have enough config options
  if (typeof config.pps === 'undefined' || config.pps === null) {
    throw new Error('Not enough config options');
  }

  // The module return this promise
  // This is where the job is done
  return new Promise((resolve, reject) => {
    // read file and parse xml to get json
    Promise.all(config.pps.map(x => asyncReadFile(x).then(asyncXmlParser)))
      .then(mergedPPSs => {
        // Reduce the jsonified permission in order to apply merge to them
        return mergedPPSs.reduce((mergedPPS, aPPS) => {

          // first loop we will use the current Permission
          if (Object.entries(mergedPPS).length === 0 && mergedPPS.constructor === Object) {
            return aPPS.content;
          }

          let myExtend = extendify({
            inPlace: false,
            isDeep: true,
            arrays: 'merge'
          });
          let mergeResult = {};
          // Merge the permission
          mergeResult[aPPS.type] = myExtend(
            mergedPPS[aPPS.type], aPPS.content[aPPS.type]
          );
          return mergeResult;
        }, {})
      })
      .then(pps => {
        // Build the permission file and write it to the file system where the output has been specified
        let builder = new xml2js.Builder({ 'xmldec': { 'version': '1.0', 'encoding': 'UTF-8' }, 'renderOpts': { 'pretty': true, 'indent': '    ', 'newline': '\n' } });
        let permission = builder.buildObject(pps);
        fs.writeFileSync(config.output, permission);
        logger('Permissions merged')
        resolve(permission); // we are done
      }).catch(err =>
        reject(new Error(err))
      );
  });
};