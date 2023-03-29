/***************question 1********* *
document.write("<h2>Hello World!</h2><p>Have a nice day!</p>");
alert("<b>ceci est un test</b>");
/******************question 2***** *
var nomexterne="Hein";
var prenom="Terreur";
function portee(nom){
    
    nomglobale="Halle";
    console.log(window.nomgolbale+nom+prenom);
    console.log(nomglobale+nomexterne+prenom);
}
portee("ex ");
console.log(prenom);
/***********question 3************ *
<form action="" id="form1" name="form1">
        <input type="text" name="nom" value="Mozart" /> <input type="text" name="prenom" value="Ella" /> <input
            type="submit" id="idSubForm1" name="subForm1" value="Connection" />
    </form>
    <div id="postit">
        <button>cache</button>
        <button>afficher</button>

    </div>
/****************question 4 *************
document.querySelector('p').textContent = '1er paragraphe du document';
let documentDiv = document.querySelector('div');
documentDiv.querySelector('p').textContent = '1er paragraphe du premier div';
document.querySelector('p.bleu').style.color = 'blue';
let documentParas = document.querySelectorAll('p');
let divParas = documentDiv.querySelectorAll('p');
documentParas.forEach(function(nom, index){
    nom.textContent += ' (paragraphe n°:' + index + ')';
});
document.getElementById('p1').style.color = 'blue';
let bleu = document.getElementsByClassName('bleu');
for(valeur of bleu){
    valeur.style.color = 'blue';
}
let paras = document.getElementsByTagName('p');
for(valeur of paras){
    valeur.style.color = 'blue';
}
document.querySelector('div').innerHTML +='<ul><li>Elément n°1</li><li>Elément n°2</li></ul>';*/
var mytableau=[];
