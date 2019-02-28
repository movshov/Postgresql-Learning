var Pool = require('pg').Pool;
var config = {
	host: 'localhost',
	user: 'postgres',
	password: '123456789',
	database: 'billboard',
};


var pool = new Pool(config);

var user_input = "That's What I Like";

async function get_hits(){
	try{
	var query = "select * from hot100 where title = '" + user_input + "'";
	console.log(query);	//display query.
	var response = await pool.query(query);
	console.log(response.rows);
	}
	catch(e){
		console.error(e);
	}
}

get_hits();
