
/*function maFonction()
 {
 var plop1 = 123;
 return plop1;
 }
 function maFonction2()
 {
 plop2 = 456;
 }
 plop1 = maFonction();
 console.log("fonction 1 / plop1 : "+plop1);
 maFonction2();
 console.log("mafonction2 > plop2 : "+plop2);
 var cube = function(nombre)
 {
  var resultat = nombre*nombre*nombre;
 }
 // Appel de la fonction cube() :
 var k = cube(2);
 function message(x)
{
 if (x >= 10)
 {
 return;
 }
 console.log("x : "+x);

 boucle(x + 1); // appel récursif
}
boucle(0); *
var x = window.prompt("saisissez votre nombre");
var y = window.prompt("saisissez votre nombre");*/

/********************ex1tableau *
var tableau=[];
var saisie="";
var tailletableau= parseInt(prompt("saisir la taille du tableau"));
for(i=0;i<tailletableau;i++){
 saisie=prompt("veuillez saisir une valeur :");
tableau.push(saisie);
}
console.log(tableau);


function produit(x, y) {
    return x * y;
  }
  let resultat = produit(2, 5);
  window.alert(resultat);
  document.getElementById("resultat").innerHTML = resultat;
function afficheimg(){
    var image = document.createElement("img");
    image.src = "afpa.png";
    document.body.appendChild(image);
}
var x=window.prompt("entrez un nombre :")
function tablemulti(x){
    while(i<=10){

    }
}
alert("Coucou !");
console.log("Ah que Coucou !");
document.write("Coucou beuh !");
var elt1 = document.querySelector(".example");
var bobo = document.querySelector("body");
console.log("La 2nde zone de texte a pour nom :");
console.log(document.forms['form1'].elements[1].name);
console.log("La 1ère zone de texte a pour valeur :'");
console.log(document.forms['form1'].elements['nom'].value);
console.log("Le bouton Submit a pour identifiant unique : ");
console.log(document.getElementById('idSubForm1').id)
    ;
console.log("Le bouton Submit a pour valeur :");
console.log(document.getElementsByName('subForm1')[0].value);
document.getElementById('idDiv').innerHTML = "<h3>Titre</h3>";

console.log(elt1);
console.log(bobo);

function testerRadio() {
    var radio = document.getElementsByName("btnRadChoix");
    for (var i = 0; i < radio.length; i++) {
        if (radio[i].checked) {
            document.getElementById("txtBox1").value = radio[i].value;
        }
    }
}
var
    version = navigator.appVersion; console.log("Lecode name de votre browser est :"
        + navigator.appCodeName);
console.log("Le nom ou la marque du browser est :"
    + navigator.appName);
console.log("Les informations sur la version sont:" + version);
console.log("Le browser a comme user-agent :"
    + navigator.userAgent);
console.log("");
if (version.indexOf('Win') > -1) {
    console.log("<br />Vous etes sous l'environnement Windows");
    console.log("<br />");
}
if (navigator.userAgent.indexOf('Firefox') > -1) {
    console.log("Vous utilisez un navigateur FireFox");
} 
else if (version.indexOf('Chrome') > -1) {
    console.log("Vous utilisez un navigateurChrome");
} 
else if (version.indexOf('MSIE') > -1) {
    console.log("Vous utilisez un navigateur Microsoft Internet Explorer");
} 
else {
    console.log("Vous utilisez un navigateur inconnu");
}
let b=document.body;
let p1=document.getElementById('p1');
let p2=document.getElementById('p2');
let p4=b.lastElementChild;
let newp=document.createElement('p');
let newtext=document.createTextNode('texte ecris en js avec appenchild()')
let clonep1=p1.cloneNode(true);
let eltdel=b.removeChild(p1);
p2.remove()
alert('Noeud supprimé du dom: '+eltdel+'\nContenue :'+eltdel.textContent);
p2.insertAdjacentElement('afterend',clonep1);
/*newp.textContent='paragraphe crée grace au js avec appen()';
b.insertBefore(p1,p4);
b.append(newp,'text inséré avec append()');
b.appendChild(newtext);
p1.insertAdjacentElement('afterend',newp);
p1.insertAdjacentHTML('beforeend',htmlContent);
p2.insertAdjacentText('afterbegin','text ajouté dans');*/
let p1 = document.querySelector('p');
let p2 =document.getElementById('p2');
let vide = document.getElementById('vide');

p2.setAttribute('class','blue')
vide.innerHTML+='class'+p1.className+'<br>id: '+p1.
if (p1.hasAttribute()) {
    let attp1 = p1.attributes;
    vide.innerHTML = 'liste des attributs de p1 : <br>'
    for (let i = 0; 0 < attp1.length; i++) {
        vide.innerHTML += attp1[i].name + '=' + attp1[i].value + '<br>';
    }
}