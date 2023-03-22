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
console.log(calc)*/
var n = 0 ;
var m =0;
var i =window.prompt("saisissez un nombre")
while (n<i) {
  n++
  console.log(n)
  var m = parseInt(m) +parseInt(n) 
};
console.log(m);
/**********************exo4************* */
var n
