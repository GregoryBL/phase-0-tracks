var colors = ['blue', 'red','green','black'];

var horseName = ['bucky','chuck','chief','hugo'];

colors.push('white');
horseName.push('barry');

console.log(colors);
console.log(horseName);

var combo = {};

for (var i =0; i<colors.length; i++) {
   combo[horseName[i]]=colors[i];
}

console.log(combo);

function Car(color, numberOfWheels, topSpeed) {
 this.color = color;
 this.numberOfWheels = numberOfWheels;
 this.topSpeed = topSpeed;

 this.turnOn = function() {
   console.log("Vroom");
 }

 this.paintIt = function(color) {
  this.color=color;
 }
}

var corvette = new Car("red", 4, 180);
corvette.turnOn();
console.log(corvette);

var pinto = new Car("muddy yellow", 4, 85);
pinto.turnOn();
console.log(pinto);

pinto.fallApart = function() {
 console.log("I won't go any more.");
}

pinto.fallApart();
// corvette.fallApart(); // Not a function

pinto.paintIt('blue');

console.log(pinto.color);

pinto.color="crappy orange";

console.log(pinto.color);

// Loop through properties of an object:
for (var prop in pinto) {
  if (pinto.hasOwnProperty(prop)) {
    console.log(prop);
  } 
}

console.log(new Object)