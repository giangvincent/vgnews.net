const request = require('request')

request('http://google.com', function (data) {
  console.log(data)
})
