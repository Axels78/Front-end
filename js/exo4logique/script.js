//exo 4.1**********************************
let heure=prompt("saisir l'heure");
let min=prompt("saisir les minutes");
function heurduturfu(heure,min){
    min=min+1
    if(min>59){
        heure=heure+1
        min=0
    }
}
heurduturfu(heure,min)
console.log("il sera :"+heure+min+"dans une minute")