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