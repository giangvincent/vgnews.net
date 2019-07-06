/**
 * Main js fncs for xray crawler tool
 * @type {[type]}
 */
const request = require('request');

const path = require('path');
const fs = require('fs');
const https = require('https')
const Xray = require('x-ray');
const mimeTypes = require('mimetypes');
const xray = Xray();
const rulesFolder = '../public/upload/rules/';
const crawledDataFolder = '../public/upload/crawledData/';

// require dom js
// const jsdom = require("jsdom");
// const { JSDOM } = jsdom;
const cheerio = require('cheerio')

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
				//console.log(data)
				num_push++;
				for (var d of data) {
					// load dom for every data crawled
					// var dom = new JSDOM(d.content);
					// const document = dom.window.document;
					// var all = document.getElementsByTagName("*");
					// //console.log(all)
					// for (var i = 0, max = all.length; i < max; i++) {
					// 	console.log(all[i].getAttribute('src'))
					// }
					if (typeof d.content !== 'undefined' && d.content !== null) {
						d.title = cleanText(d.title)
						d.description = cleanText(d.description)

						var imageName = '../public/upload/images/' + randStr(20) + '.' + ((getExtension(d.image) != '' && getExtension(d.image) != null) ? getExtension(d.image) : 'jpg')
						if (typeof data_file.regex_image != 'undefined' && data_file.regex_image != '') {
							
							eval('var fullsizeImage = d.image.replace(/'+ data_file.regex_image +'/g , "")');
						} else {
							var fullsizeImage = d.image
						}
						saveImageToDisk(fullsizeImage, imageName);
						d.image = imageName.replace('../public/upload/' , '')

						makeContent(d.content, {}, (content) => {
							//d.content = content;
							// console.log(content)
							if (content.success) {
								d.content = content.data.join('')
								ret.push(d)
							}
							
						});
						// process.exit()
						
					}
				}
				//console.log(ret)
				//console.log(data.length)

				if (num_push == data_file.list.length) {
					// console.log(ret)
					saveCrawledData(ret, crawledDataFolder, filename)
					return true;
				}
			}).catch(function (err) {
				console.log(err)
			})
		}
	} else {
		return false;
	}
}

function cleanText(text) {
	if (typeof text !== 'undefined') {
		return text.trim().replace('\t', '').replace('\r', '').replace('\n', '')
	} else return '';
	
}

function makeContent(content, data = {}, callback) {
	const $ = cheerio.load(content);
	var exceptEle = ['html', 'body', 'head'];
	var images = [];
	var texts = [];
	var retContent = [];
	$("*").each((index, ele) => {
		if (exceptEle.indexOf(ele.name) == -1) {
			// console.log(ele.name)
			if ($(ele).find('img').length) {
				// console.log($(ele).find('img').attr('src'));
				var image_src = $(ele).find('img').attr('src');
				// console.log(mimeTypes.detectExtension(image_src))
				if (images.indexOf(image_src) < 0 && isURL(image_src)) {
					images.push(image_src)
					var imageName = '../public/upload/images/' + randStr(20) + '.' + ((getExtension(image_src) != '' && getExtension(image_src) != null) ? getExtension(image_src) : 'jpg')
					saveImageToDisk(image_src, imageName);
					imageName = imageName.replace('../public/upload/' , '')
					var imgContent = '<div><p><img src="' + imageName + '"></p></div>'
					retContent.push(imgContent)
				}
				
			} else {
				var text = cleanText($(ele).text())
				if (texts.indexOf(text) < 0 && text != '') {
					texts.push(text)
					var textContent = '<div><p>' + text + '</p></div>';
					retContent.push(textContent)
				}
				
				// console.log($(ele).text())
			}
		}
		// console.log(index, $(ele).text())
	})
	return callback({
		success: true,
		data: retContent
	})
}

/**
 * create random string
 * @param {*} length 
 */
function randStr(length) {
	var result = '';
	var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
	var charactersLength = characters.length;
	for (var i = 0; i < length; i++) {
		result += characters.charAt(Math.floor(Math.random() * charactersLength));
	}
	return result;
}
/**
 * save crawled data, include only text and images
 * @param {*} data 
 * @param {*} crawledDataFolder 
 * @param {*} filename 
 */
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
	var file = fs.createWriteStream(localPath);
	https.get(url, function (response) {
		response.pipe(file).on('finish', () => {
			console.log('saved images #', url)
		})
		.on('error', err => {
			file.end();
			console.error(err);
		});
	});
	
}

function isURL(str) {
	var urlRegex = '^(?!mailto:)(?:(?:http|https|ftp)://)(?:\\S+(?::\\S*)?@)?(?:(?:(?:[1-9]\\d?|1\\d\\d|2[01]\\d|22[0-3])(?:\\.(?:1?\\d{1,2}|2[0-4]\\d|25[0-5])){2}(?:\\.(?:[0-9]\\d?|1\\d\\d|2[0-4]\\d|25[0-4]))|(?:(?:[a-z\\u00a1-\\uffff0-9]+-?)*[a-z\\u00a1-\\uffff0-9]+)(?:\\.(?:[a-z\\u00a1-\\uffff0-9]+-?)*[a-z\\u00a1-\\uffff0-9]+)*(?:\\.(?:[a-z\\u00a1-\\uffff]{2,})))|localhost)(?::\\d{2,5})?(?:(/|\\?|#)[^\\s]*)?$';
	var url = new RegExp(urlRegex, 'i');
	return str.length < 2083 && url.test(str);
}

function getExtension(filename) {
    var ext = path.extname(filename || '').split('.');
    return ext[ext.length - 1];
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


