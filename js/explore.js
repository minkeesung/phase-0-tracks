
function reverse(str){
	for (var i = str.length; i >= 0; i-=1) {
	console.log(str[i]);
	}

}

reverse("can")

// var isOver21 = true;
// var drinksAlcohol = true;

// if (isOver21 && drinksAlcohol) {
// 	console.log("Would you like a drink -- beer or wine, perhaps?");
// } else if (isOver21 && !drinksAlcohol) {
// 	console.log("Can I get you an ice water, coffee, tea, or soft drink?");
// } else {
// 	console.log("One Shirley Temple, coming up!");
// }

var something = true;

if (something) {
	console.log(reverse("can"))
}