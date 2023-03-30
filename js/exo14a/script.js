/*var myDate1 = new Date() ; // Date du jour
var myDate2 = new Date(3600*24*365*40) ; // Date depuis le 1er janvier 1970
var myDate3 = new Date(2012, 9, 19) ;
var myDate4 = new Date(2012, 9, 19, 10, 33, 12);
var myDate5 = new Date("Jan 1, 2000 00:00:00");
console.log('new Date() : ' + myDate1.toLocaleString());
console.log('new Date(3600*24*365*40) : ' + myDate2.toLocaleString());
console.log('new Date(2012, 9, 19) : ' + myDate3.toLocaleString());
console.log('new Date(2012, 9, 19, 10, 33, 12) : ' + myDate4.toLocaleString());
console.log('new Date("Jan 1, 2000 00:00:00") : ' + myDate5.toLocaleString());
console.log("");
var annee = 1900 + myDate1.getYear();
var mois = myDate1.getMonth() + 1;
var jour = myDate1.getDate();
console.log('date du jour : ' + jour + "/" + mois + "/" + annee);*/
/*************exo1****** *
var tableau=[];
var saisie;
var somme=0;
while(saisie!=0){
 saisie=prompt("veuillez saisir nombre :");
tableau.push(saisie);
}
console.log(somme);
for(var i=0;i<tableau.length;i++){
    console.log("nombre : "+tableau[i]);
    document.getElementById('superdiv').innerHTML+="<p>"+tableau[i]+"</p>";
    somme=parseInt(somme)+parseInt(tableau[i]);
}
console.log("la somme est de :" +somme)
somme/=(tableau.length-1)
console.log("la moyenne est de : "+somme);
console.table(tableau);
*/
var element = document.getElementById("button1");
element.addEventListener("click", function()
{
 alert("OK");
});/*
document.querySelector('#lien').onclick = function()
{
 alert('Vous avez cliqué !');
} */
function message()
 {
 alert("Coucou c est moi");
 }
 var prenom=(getElementById("pren"))
 function myfct(){
    window.alert ("votre prénom est :"+prenom)
 }
 document.getElementById("bout").addEventListener("onclick", myfct);