/**************************exemple 1 */
/*var temp =window.prompt("saisissez votre température");
var tens =window.prompt("saisissez votre tension");
var poul =windows.prompt("saisissez votre poul");
var patient
if(window.confirm("Etes vous un patient ?") == true){
    var patient=1;
   

if (temp>38 ){
    window.alert("Le patient a de la fievre");
}
if (temp>=41 && tens>=25){
    window.alert("Le patient va perdre patience");
}
if(temp>42 || (tens<25 &&poul>180)){
    window.alert("prévenir la famille");
}
if(temp>40 && tens>=25){
    window.alert("hospitaliser le patient");
}
}
else{
    window.alert("Éconduire l'ollibrius");
}*/
/*****************exo1***** *
var numb =window.prompt("saisissez un nombre :");
if(numb%2 ==0){
    window.alert("nombre pair");
}
else{
    window.alert("nombre impair")
}
*/
/**************exo2******************* *
var ann =window.prompt("saisissez votre année de naissance :");
var ceta =window.prompt("saisissez l'année actuelle");
var age =ceta-ann;

if(age>=18){
    window.alert("vous etes majeurs")
}
else{
    window.alert("Vous étes mineur")
}
/**********************************exo 3  */
var nb1 = window.prompt("saisissez un nombre");
var nb2 = window.prompt("saisissez un autre nombre");
var oper = window.prompt("saisissez quel opération vous désirez(+,-,/,*)");
var resu;
switch (oper) {
    case "+":
        resu = parseInt(nb1) + parseInt(nb2);
        window.alert("le résultat est:" + resu);
        break;
    case "-":
        resu = nb1 - nb2;
        window.alert("le résultat est:" + resu);
        break;
    case "*":
        resu = nb1 * nb2;
        window.alert("le résultat est:" + resu);
        break;
    case "/":{
        window.alert("le résultat estimpossible");
    }
        resu = nb1 / nb2;
        window.alert("le résultat est:" + resu);
        break;
}
/*
if(oper=="+","-","*","/"){
if(oper=="+"){
resu=parseInt(nb1)+parseInt(nb2);
window.alert("le résultat est:"+resu);
}
if(oper=="-"){
resu=nb1-nb2;
window.alert("le résultat est:"+resu);
}
if(oper=="/" || nb1!=0 || nb2!=0){
resu=nb1/nb2;
window.alert("le résultat est:"+resu);
}
if(oper=="*"){
resu=nb1*nb2;
window.alert("le résultat est:"+resu);
}
}

else{
    window.alert("saisissez une opérateur valable")
}
*/
/****************************exo4 *
var PU=window.prompt("saisissez le prix unitaire")
var qte=window.prompt("saisissez la quantité")
var TOT=PU*qte
var Port
var PAP

}*/