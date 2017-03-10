

arr = ["bob", "whatt", "okkkkk","nooooooooooooo"]

function longest(arr){
	var longest = arr[0];
	for (var i = 0; i<arr.length; i++) {
	if (arr[i].length>longest.length){
	  longest = arr[i]
	  }
	}
	console.log(longest)

}
longest(arr);

function is_equal(obj1,obj2){
  var something = "dunno"
	for (var p in obj1) {
	  if(obj1[p] == obj2[p]){
	    something = true
	  }
	}
	if (something == true){
	  console.log(true)
	}else{
	  console.log(false)
	}
	  
	
}

var a = {name: "Steven", age: 54};
var b = {name: "Tamir", age: 54};
var c = {name: "what", age: 77};

is_equal(a,b);
is_equal(b,c)

function random_word(int){
  var arr = [];
  
  
   
  var letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
  for (i=0; i<int; i++){
      
      var word = [];
      
      for(j=0;j<Math.floor((Math.random() * 10)+1);j++){
         word.push(letters[Math.floor(Math.random() * 26)]);
         
      
      }
      var a =  word.join("");
      arr.push(a)
    
    
  }
  console.log(arr);
  return arr;
}

random_word(5);

for (k=0;k<10;k++){
	
	longest(random_word(5));
}