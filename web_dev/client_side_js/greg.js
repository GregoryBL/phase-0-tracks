console.log('hey there');

para1 = document.getElementsByTagName("p")[0];
para1.style.border = 'thick solid #0000FF';
para1.style.backgroundColor = '#0000FF';

img1 = document.getElementsByTagName('img')[0];
img1.height = '150';

var claire = document.createElement('p');
claire.textContent = "I am going to be an awesome scientist.";
document.body.appendChild(claire);

/*
var bodkids = document.body.childNodes;
for (i = 0; i < bodkids.length(); i++) {
  bodkids[i].style.color = '#0000FF';
}
*/
