var Pool = require('pg').Pool;
var config = {
	host: 'localhost',
	user: 'postgres',
	password: '123456789',
	database: 'billboard',
};

var user1 = "ann";
var password1 = "xyz123' or '1' = '1";
var password2 = 'password';
var name = 'Despacito';

var pool = new Pool(config);

async function get_hits(){
	try{
	var query = "select * from hot100 where title = $1";
	console.log(query);	//display query.
	var response = await pool.query(query, [name] );
	console.log(response.rows);
	}
	catch(e){
		console.error(e);
	}
}

get_hits();
