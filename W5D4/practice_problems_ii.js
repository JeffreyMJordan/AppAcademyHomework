function titleize(names, callback){
	var titleized = names.map(name => "Mr. "+ name+" Jinglehimer Schmidt");
	callback(titleized)
}

titleize(["John", "Jake", "Jack"], (names) => {
	names.forEach(name=>console.log(name))
});

function Elephant(name, height, tricks){
	this.name = name;
	this.height = height; 
	this.tricks = tricks;
}

Elephant.prototype.trumpet = function(){
	console.log(this.name + " the elephant goes prrrr")
}

Elephant.prototype.grow = function () {
  this.height = this.height + 12;
};

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function () {
  trickIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[trickIndex]}!`);
};



Elephant.paradeHelper = function (elephant) {
  console.log(`${elephant.name} is trotting by!`);
};





function dinerBreakfast() {
  let order = "I'd like cheesy scrambled eggs please.";
  console.log(order);

  return function (food) {
    order = `${order.slice(0, order.length - 8)} and ${food} please.`;
    console.log(order);
  };
};