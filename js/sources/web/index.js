//Voici mon code js
console.log('Hello World'); // exemple d'instruction

/* Commentaire
Sur 
Plusieurs
Lignes */

var nom = 'julien';
// let nom = 'julien';
// const nom = 'julien';

const majorite = 18;

const tableau = []; // définition d'une constante ayant pour contenu un array vide
// tableau = ['orange', 'banane', 'pomme']; // on peut pas le faire
tableau.push('banane'); //ça, on peut le faire (modification de l'array)

function number_1() {
  if (1 === 1) {
    let nom = 'julien';
    // on peut réutiliser nom entre ces accolades
  }
  // ici nom est inconnu en dehors du bloc if où elle est déclarée
}

function number_2() {
  var nom = 'julien';
  let pseudo = 'raptor';
  if (1 === 1) {
    let pseudo_2 = 'new pseudo';
    var nom_2 = 'test';
    // on peut accéder à nom
    // on peut accéder à raptor
  }
  // on peut accéder à nom
  // on peut accéder à raptor
  // on peut pas accéder à pseudo_2
  //on peut accéder à nom_2
}

var nom = 'julien';
var nombre = 12;
//var tableau = ['pomme', 'vache', 'lait'];
var vrai = true;
var faux = false;

var personne = {};
personne.age = 12;
personne.prenom = 'Benjamin';
personne.adresse = "rue du code";
for (propriete in personne) {
  console.log(propriete, "=", personne[propriete]);
}

const liste = ["pomme", "voiture", "ananas"];
for (element of liste) {
  console.log("element=", element);
}

// var tableau = [['pomme', 'vache', 'lait'], 'Janine'];

function sayHello(pseudo) {
  console.log('Hello', pseudo, '!');
}

sayHello("julien");

function additionner(value1, value2) {
    return value1+ value2;
}

const resultat = additionner(1,3);
console.log(resultat);

const variable_1 = 1;
const variable_2 = "1";

if (variable_1 !== variable_2) {
  console.log("variable_1 est différent de variable_2");
} else if (variable_1 === 1) {
  console.log("1 est égal à 0");
} else {
  console.log("1 est différent de 1");
}

if (2 > 1) { // va tester si 2 est supérieur à 1
  console.log("2 est plus grand que 1");
}

if (0 >= 1) { // va tester si 2 est supérieur ou égal à 1
  console.log("Executee");
}

if (2 < 2) { // va tester si 1 est inférieur à 2
  console.log("1 est inférieur à 2");
}

if (3 <= 2) { // va tester si 2 est inférieur ou égal à 2
  console.log("2 est inférieur ou égal à 2");
}

const donnee = "2";

switch (donnee) {
  case 1:
    console.log("La donnée vaut 1");
    console.log("Un autre log");
    break;
  case 2:
    console.log("La donnée vaut 2");
    //
    break;
  case 3:
    console.log("La donnée vaut 3");
    break;

  default:
    console.log("Voici le default");
    break;
}

const fruits = ["orange", "banane", "pomme"];

var premier_fruit = fruits[0];
console.log(premier_fruit);

fruits.push("poire");
fruits.unshift("poire_2");

fruits.pop();
fruits.shift();

fruits[0] = "modification";

var tableau_2 = [["pomme", "vache", "lait"], "agriculture"];

console.log(tableau_2[0][2]);

let compteur = 0;
do {
  compteur += 1;
  console.log(compteur);
} while (compteur < 3);

// while (true) {
//   // boucle infinie
// }

let compteur_2 = 0;
while (compteur_2 < 3) {
  compteur_2 += 1;
  console.log("Hello World");
  if (compteur_2 == 1) {
    console.log("Loop exit");
    break;
  }
}

for (let compteur = 0; compteur < 3; compteur++) {
  console.log("compteur=", compteur);
}

//boucle infinie
// let compteur_3 = 0;
// while (compteur_3 < 3) {
//   console.log("Hello World");
// }

const phrase = 'J\'ai visité Paris';
console.log(phrase);

//var elements = document.getElementsByTagName("td");
//var element = elements[0];
//var element = document.getElementsByTagName("td")[0];
//var element_1 = document.getElementsByClassName("maClasse")[0];
//var elements = document.getElementsByTagName("body")[0].getElementsByClassName("test");

var element = document.getElementById("div_1");
element.textContent = "Ok";

element.className = "inactive";
element.classList.add("newClass");

element.setAttribute("prenom", "julien");
var prenom = element.getAttribute("prenom"); //returns julien

console.log("prenom=", prenom);

//document.getElementById("p2").style.color = "blue";
element.style.color = "blue";
element.style.backgroundColor = "red";

//CSS Syntax
//background-color: "blue";

let btn = document.createElement("button");
btn.innerHTML = "Click Me"; //<button>Click Me</button>
document.body.appendChild(btn);

var element_li = document.createElement("li");
element_li.textContent = "Water";
var texte = document.createTextNode(" please");
element_li.appendChild(texte);
let btn_2 = document.createElement("button");
btn_2.innerHTML = "Click Me 2"; //<button>Click Me</button>
document.body.appendChild(btn_2);
element_li.appendChild(btn_2);
document.getElementById("myList").appendChild(element_li);

var timeoutID;
function afficherAlerte() {
  timeoutID = setTimeout(showAlert, 2000);
}

function showAlert() {
  alert("Voici une alerte…");
}

function clearAlert() {
  clearTimeout(timeoutID);
}

var intervalID = setInterval(sayHello, 1000);

function sayHello() {
  console.log("Hello World");
}

function stopInterval() {
  window.clearInterval(intervalID);
}