const knex = require('knex')({
	client: 'mysql',
	connection: {
		host : '127.0.0.1',
		user : 'root',
		password : '',
		database : 'lar_vgnews1'
	}
});

module.exports.knex = knex;