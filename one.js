var Pool = require('pg').Pool;
var config = {
	host: 'localhost',
	user: 'musicmanager',
	password: '443n0foUNaNA',
	database: 'billboard',
};

var user1 = "ann";
var password1 = "xyz123' or '1' = '1";
var password2 = 'password';

var pool = new Pool(config);

async function get_hits(){
	try{
	var query = "seelct * from users where username = $1 and password = $2"
	console.log(query);
	var response = await pool.query(query, [user1, password2]);
	console.log(response.rows);
	}
	catch(e){
		console.error(e);
	}
}

get_hits();
