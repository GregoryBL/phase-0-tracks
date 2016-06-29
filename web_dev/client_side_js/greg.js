console.log('hey there');

para1 = document.getElementsByTagName("p")[0];
para1.style.border = 'thick solid #0000FF';
para1.style.backgroundColor = '#0000FF';

img1 = document.getElementsByTagName('img')[0];
img1.height = '150';

var claire = document.createElement('p');
claire.textContent = "I am going to be an awesome scientist.";
document.body.appendChild(claire);

var button1 = document.createElement('INPUT');
button1.setAttribute("type", "button");
button1.setAttribute("name", "iowa-button");
button1.value = "Iowa";
document.body.appendChild(button1);

function toggleCorn(target) {
  if (img1.hidden) {
    img1.hidden = false;
  } else {
    img1.hidden = true;
  }

  // img1.hidden = "true";
}

button1.addEventListener("click", toggleCorn);

var bodkids = document.body.childNodes;
console.log(bodkids);

// for (var i = 0; i < 3; ++i) {
//   console.log(bodkids[i]);
//   bodkids.item(i).style.color = '#0000FF';
// }

