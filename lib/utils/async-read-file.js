'use strict';
const fs = require('fs');

module.exports = (file) => {
  const promise = new Promise((resolve, reject) => {
    fs.readFile(file, 'utf8', (err, data) => {
      !!err && reject(err)
      resolve({
        'content': data.replace("\ufeff", ""),
        'type': file.endsWith('.profile') ? 'Profile':'PermissionSet'
      });
    });
  });
  return promise;
};