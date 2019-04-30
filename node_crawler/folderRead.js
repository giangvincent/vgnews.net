const fs = require('fs');

let getListFiles = function (folder = rulesFolder , callback) {
	var data = {};
	readFiles(folder, function(filename, content) {
		data[filename] = content;
		callback(content , filename)
	}, function(err) {
		throw err;
	});
	
}

let readFiles = function (dirname, onFileContent, onError) {
    fs.readdir(dirname, function(err, filenames) {
        
        if (err) {
            onError(err);
            return;
        }
        filenames.forEach(function(filename) {
            //console.log(filename)
            if (fs.lstatSync(dirname + filename).isDirectory()) {
                return readFiles(dirname + filename + '/' , onFileContent , onError)
            }
            fs.readFile(dirname + filename, 'utf-8', function(err, content) {
                if (err) {
                    onError(err);
                    return;
                }
                onFileContent(filename, content);
            });
        });
    });
}

module.exports.getListFiles = getListFiles;
module.exports.readFiles = readFiles;