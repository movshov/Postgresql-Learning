var Pool = require('pg').Pool;
var config = {
	host: 'localhost',
	user: 'postgres',
	password: '123456789',
	database: 'billboard',
};


var pool = new Pool(config);

var user1 = "ann";
var password1 = "xyz123' or '1' = '1";

async function get_hits(){
	try{
	var query = "select * from users where username = '" + user1 + "' and password = '" + password1 + "'";
	console.log(query);	//display query.
	var response = await pool.query(query);
	console.log(response.rows);
	}
	catch(e){
		console.error(e);
	}
}

get_hits();
