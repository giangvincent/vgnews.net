// const db = require('./dbConfig.js')
const readFolder = require('./folderRead.js')

// const fs = require('fs');
const crawledDataFolder = '../public/upload/crawledData/';

function checkExistDb (content, filename) {

}

readFolder.getListFiles(crawledDataFolder, function (content , filename) {
  console.log(filename)
  checkExistDb(content, filename)
})
