var tableau=[];
var saisie;

while(saisie!=0){
 saisie=prompt("veuillez saisir un fruit ou légume :");

tableau.push(saisie);
}

for(var i=0;i<tableau.length;i++){
    console.log("fruit et légumes : "+tableau[i]);
    document.getElementById('superdiv').innerHTML+="<p>"+tableau[i]+"</p>";
}
function myfct(){
    saisie=prompt("veuillez saisir un fruit ou légume :");
    tableau.push(saisie);
    document.getElementById('superdiv').innerHTML+="<p>"+tableau[i]+"</p>";
}
document.getElementById("btfl").addEventListener("click", myfct);


console.table(tableau);

