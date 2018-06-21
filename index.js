var express = require('express');
var server = express();
var path = require('path');
var bodyParser = require('body-parser');


server.use(express.static('public'));

server.use(bodyParser.urlencoded({
   extended: false
}));

server.use(bodyParser.json());



server.set('view engine', 'ejs');
server.set('views', __dirname + '/views');

server.get('/getData', function(request, response){

	//
	var result;
	weight = Number(request.query.weight);
	console.log('weight =' + weight);
	switch(Number(request.query.letter)){
		case 1 :
		result = calcPostageLettersStamped(weight);
		break;
		case 2 :
		result = calcPostageLettersMetered(weight);
		break;
		case 3 :
		result = calcPostageLargeEnvelopes(weight);
		break;
		case 4 :
		result = calPostageFirstClass(weight);
		break;
	}
	console.log('result=' + result);
	response.render('results.ejs', {result:result});
} );

server.listen (process.env.PORT || 8888, () => { console.log("Listening on port 8888");});
function calcPostageLettersStamped(weight){
	if (weight == 1){
		return 0.50;
	}
	else if(weight == 2){
		return 0.71;
	}
	else if(weight == 3){
		return 0.92;
	}
	else if(weight == 3.5){
		return 1.13;
	}
	else{
		//return Not Valid;
	}
}

function calcPostageLettersMetered(weight){
	if (weight == 1){
		return 0.47;
	}
	else if(weight == 2){
		return 0.68;
	}
	else if(weight == 3){
		return 0.89;
	}
	else if(weight == 3.5){
		return 1.10;
	}
	else{
		//return Not Valid;
	}
}

function calcPostageLargeEnvelopes(weight){
	if (weight == 1){
		return 0.98;
	}
	else if(weight == 2){
		return 1.19;
	}
	else if(weight == 3){
		return 1.40;
	}
	else if(weight == 4){
		return 1.61;
	}
	else if(weight == 5){
		return 1.82;
	}
	else if(weight == 6){
		return 2.03;
	}
	else if(weight == 7){
		return 2.24;
	}
	else if(weight == 8){
		return 2.45;
	}
	else if(weight == 9){
		return 2.66;
	}
	else if(weight == 10){
		return 2.87;
	}
	else if(weight == 11){
		return 3.08;
	}
	else if(weight == 12){
		return 3.29;
	}
	else if(weight == 13){
		return 3.50;
	}
	else{
		//return Not Valid;
	}
}

function calPostageFirstClass(weight){
	if (weight == 1){
		return 3.50;
	}
	else if(weight == 2){
		return 3.50;
	}
	else if(weight == 3){
		return 3.50;
	}
	else if(weight == 4){
		return 3.50;
	}
	else if(weight == 5){
		return 3.75;
	}
	else if(weight == 6){
		return 3.75;
	}
	else if(weight == 7){
		return 3.75;
	}
	else if(weight == 8){
		return 3.75;
	}
	else if(weight == 9){
		return 4.10;
	}
	else if(weight == 10){
		return 4.45;
	}
	else if(weight == 11){
		return 4.80;
	}
	else if(weight == 12){
		return 5.15;
	}
	else if(weight == 13){
		return 5.50;
	}
	else{
		//return Not Valid;
	}
}



