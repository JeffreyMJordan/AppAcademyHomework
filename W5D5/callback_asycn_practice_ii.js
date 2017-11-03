const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});


const teaAndBiscuits = function(){
	reader.question("Would you like some tea?", function(res){
		console.log(`You replied ${res}`);
		reader.question("Would you like some biscuits?", function(res2){
			console.log(`You replied ${res2}`)
			reader.close();
		})
	})
}

teaAndBiscuits();