/**
 * Main js fncs for xray crawler tool
 * @type {[type]}
 */
const request = require('request');

const fs = require('fs');
const https = require('https')
const Xray = require('x-ray');
const xray = Xray();
const rulesFolder = '../public/upload/rules/';
const crawledDataFolder = '../public/upload/crawledData/';

let db = require('./dbConfig.js')
let readFolder = require('./folderRead.js')

function init(urlCrawl, data_file, filename) {

	// file json of the crawl json rule
	//var file = decodeURIComponent(req.query.json);
	//var temp_file = './1.json';
	if (urlCrawl != null && urlCrawl != 'undefined' & urlCrawl != '') {
		//var data_file;
		//data_file = JSON.parse(body);

		var ret = [];
		var num_push = 0;
		//console.log(data_file)
		for (var i = data_file.list.length - 1; i >= 0; i--) {
			//console.log(data_file.list[i])
			xray(urlCrawl, data_file.list[i].list_element, [{
				title: data_file.list[i].title_filter,
				link: data_file.list[i].link_filter,
				// TODO  : get high definition Image
				image: (data_file.list[i].cover_filter_attr != 'detail-page') ? data_file.list[i].cover_filter : xray(data_file.list[i].link_filter, data_file.list[i].cover_filter),
				description: xray(data_file.list[i].link_filter, data_file.detail.description),
				content: xray(data_file.list[i].link_filter, data_file.detail.content + '@html')
			}]).then(function (data) {
				console.log(data)
				num_push++;
				for (var d of data) {
					ret.push(d)
				}
				console.log(ret)
				//console.log(data.length)
				// if (num_push == data_file.list.length) {
				// 	console.log(ret)
				// 	saveCrawledData(ret, crawledDataFolder, filename)
				// 	return true;
				// }
			}).catch(function (err) {
				console.log(err)
			})
		}
	} else {
		return false;
	}
}

function saveCrawledData(data, crawledDataFolder = crawledDataFolder, filename) {
	if (!fs.existsSync(crawledDataFolder + filename.replace('.json', ''))) {
		fs.mkdirSync(crawledDataFolder + filename.replace('.json', ''));
	}
	var stream = fs.createWriteStream(crawledDataFolder + filename.replace('.json', '') + "/" + (Date.now() / 1000) + ".json");
	stream.once('open', function (fd) {
		stream.write(JSON.stringify(data));
		stream.end();
	});
}

//Node.js Function to save image from External URL.
function saveImageToDisk(url, localPath) {
	var fullUrl = url;
	var file = fs.createWriteStream(localPath);
	var request = https.get(url, function (response) {
		response.pipe(file);
	});

}

// function getListFiles(folder = rulesFolder , callback) {
// 	var data = {};
// 	readFiles(folder, function(filename, content) {
// 		data[filename] = content;
// 		callback(content , filename)
// 	}, function(err) {
// 		throw err;
// 	});

// }

// function readFiles(dirname, onFileContent, onError) {
//     fs.readdir(dirname, function(err, filenames) {
//         if (err) {
//             onError(err);
//             return;
//         }
//         filenames.forEach(function(filename) {
//             fs.readFile(dirname + filename, 'utf-8', function(err, content) {
//                 if (err) {
//                     onError(err);
//                     return;
//                 }
//                 onFileContent(filename, content);
//             });
//         });
//     });
// }

readFolder.getListFiles(rulesFolder, function (content, filename) {
	content = JSON.parse(content)
	//console.log(content)
	//for (var i = 0; i < content['url_crawl'].length; i++) {
	init(content['url_crawl'], content, filename)
	//}

});


