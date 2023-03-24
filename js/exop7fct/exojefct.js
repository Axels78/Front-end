/************boucle while******** *
var i = 0
console.log("Table de multiplication par 5");
console.log("=============================");
while (i<=10){
 resultat = 5*i;
 console.log("5 x "+i+" = "+resultat);
 i++;
}
/***************boucle do while************* *
var i=0
console.log("Table de multiplication par 5");
console.log("=============================");
do
{
resultat = 5 * i;
console.log("5 * "+i+" = "+resultat);
i++;
} while (i <= 10) ;
/***************************boucle for .. in *
var tableau = ["Paul", "Pierre", "Anne", "Sophie"];
for (var i in tableau)
{
console.log(tableau[i]);
}
/*************************exo 1****** *

var i = 0
while (prenom != 0) {
    var prenom= window.prompt("saisissez votre prenom N" + i);
    console.log(prenom);
    i++;
}
i=i-1;
console.log(`nombre de prénom saisi:${i}`);
/****************************correction*************** *
var prenom;
var prenoms="";
var nbprenom=0;
while(prenom!=""{
    prenom=prompt("saisir le prenom");
    if (prenom!=""){
        prenom+=prenom+"\n"
        nbprenom++;
}
}
console.log(prenoms);
console.log("nb prenom :"+nbprenom);


/****************exo 2 *
var nb
var n = window.prompt("saisissez votre nombre")
while (n > 0) {
    nb = n - 1;
    console.log(nb)
    n--;
}
/***********************exo3*********** *
var n = window.prompt("saisissez votre nombre");
var som=0;
var calc;
while (n > 0) {
    n--;
    console.log(som);
    calc=som+parseFloat(n);
}
console.log(calc)*
var n = 0 ;
var m =0;
var i =window.prompt("saisissez un nombre")
while (n<i) {
  n++
  console.log(n)
  var m = parseInt(m) +parseInt(n) 
};
console.log(m);
/**********************exo4************* *
var nb1,nb2;
var somme=0;

nb1=prompt("saisir nb1");
nb2=prompt("saisir nb2");

for (var i=nb1; i<=nb2; i++){
    somme +=parseInt(i)
}
console.log(somme);
/****************exo 5 *****************
var sum = 0; // initialisation de la somme
var count = 0; // initialisation du nombre d'entiers saisis
// Boucle de saisie des entiers
while (true) {
  let input = prompt("Entrez un entier (ou 0 pour arrêter) :");
  var number = parseInt(input); // conversion de la saisie en nombre entier
  if (number === 0) {
    break; // on sort de la boucle si la saisie est égale à 0
  }
  sum += number; // ajout de l'entier à la somme
  count++; // incrémentation du nombre d'entiers saisis
}
// Calcul de la moyenne
average = sum / count;

// Affichage des résultats
console.log("Somme : " + sum);
console.log("Moyenne : " + average);
/***********************exo 6**************** *
var sum = 0;
var count = 0;
var min = Infinity; // initialisation du minimum à une valeur très grande
var max = -Infinity; // initialisation du maximum à une valeur très petite

while (true) {
  let input = prompt("Entrez un entier (ou 0 pour arrêter) :");
  let number = parseInt(input);

  if (number === 0) {
    break;
  }

  sum += number;
  count++;

  if (number < min) {
    min = number;
  }

  if (number > max) {
    max = number;
  }
}

let average = sum / count;

console.log("Somme : " + sum);
console.log("Moyenne : " + average);
console.log("Minimum : " + min);
console.log("Maximum : " + max);
/****************exo 7****************** *
var N = parseInt(prompt("Entrez le nombre de multiples à calculer :"));
var X = parseInt(prompt("Entrez le nombre entier dont vous voulez calculer les multiples :"));

for (let i = 1; i <= N; i++) {
  let multiple = i * X;
  console.log(i + " x " + X + " = " + multiple);
}
/**************************exo 8*********** *
let mot = prompt("Entrez un mot :");
let voyelles = ["a", "e", "i", "o", "u", "y"]; // tableau des voyelles
let compteur = 0;

for (let i = 0; i < mot.length; i++) {
  let lettre = mot.substr(i, 1).toLowerCase(); // on extrait la lettre courante et on la met en minuscule

  if (voyelles.indexOf(lettre) !== -1) { // si la lettre est une voyelle, on incrémente le compteur
    compteur++;
  }
}

console.log("Le mot " + mot + " contient " + compteur + " voyelles.");
/**********************************exo9********* *
var age;
var jeunes=0;
var moyen=0;
var vieux=0;
do{
    age=prompt("entrez un age");
    if(age<20){
        jeunes++;
    }
else if(age>40){
    vieux++;
}
else{
    moyen++;
}

}
while (age < 100);
console.log("nombres de jeunes :"+jeunes);
console.log("nombre de personne d age moyen:"+moyen);
console.log("nombre de vieux:"+vieux);
/****************************exo10************** *
var nb;
var div;
if{

}
**********************exo compté voyelle *******
var mot=prompt("saisir un mot");
var count=0;
for(i=0;i<mot.length;i++){
console.log(mot[i]);
if(mot[i]=="a"){
  count++;
}
}
console.log("nombre de voyelles dans le mot"+mot+": "+count);
/*************exo 10*************** *
var nbr=("saisir votre nombre");
if (nbr <= 1) {
  console.log(nbr + " n'est pas un nombre premier.");
} else if (nbr <= 3) {
  console.log(nbr + " est un nombre premier.");
} else if (nbr % 2 == 0 || nbr % 3 == 0) {
  console.log(nbr + " n'est pas un nombre premier.");
} else {
  let estPremier = true;
  for (let i = 5; i * i <= nbr; i = i + 6) {
    if (nbr % i == 0 || nbr % (i + 2) == 0) {
      estPremier = false;
      break;
    }
  }
  if (estPremier) {
    console.log(nbr + " est un nombre premier.");
  } else {
    console.log(nbr + " n'est pas un nombre premier.");
  }
}
/***********exo 11***************** */
var nombreAleatoire = Math.floor(Math.random() * 100) + 1;
var nombreEssais = 0;


while(nombreUtilisateur!=nombreAleatoire){
  var nombreUtilisateur = prompt("Devinez le nombre entre 1 et 100:");
  nombreUtilisateur = Number(nombreUtilisateur);
if(nombreUtilisateur===nombreAleatoire){
  alert("Bravo, vous avez trouvé le nombre magique en " + nombreEssais + " essais !");
  break;
}
if (nombreUtilisateur < nombreAleatoire) {
  alert("Trop petit, essayez encore !");
} else {
  alert("Trop grand, essayez encore !");
}

nombreEssais++;
}

