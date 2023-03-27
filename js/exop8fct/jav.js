
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
document.write("Coucou beuh !");*/
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
document.getElementById('idDiv').innerHTML ="<h3>Titre</h3>";
console.log(elt1);
console.log(bobo);