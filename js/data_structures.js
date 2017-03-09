var colors = ["red","green","blue","orange"];
var names = ["ed","carl","bob","steve"];
colors.push("grey");
names.push("sarah");

console.log(colors);
console.log(names);

var horse = [];
for (var i=0; i<colors.length; i++){
  horse[names[i]]=colors[i];
  
}

console.log(horse);

function Car(model, color,age_of_car, is_used_car){
	this.model = model;
	this.color = color;
	this.age_of_car = age_of_car;
	this.is_used_car = is_used_car;


	this.turn_on = function() { console.log("car is now on");};

}



var newCar = new Car("ford", "blue", 6, true);
console.log(newCar);
newCar.turn_on();