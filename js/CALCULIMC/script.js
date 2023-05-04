function calculIMC() {
    const nom=document.getElementById("nom").value
    const poids = parseFloat(document.getElementById("poids").value);
    var taille = parseFloat(document.getElementById("taille").value);
    taille=taille/100;
    const imc = (poids / (taille * taille)).toFixed(1);
    let classification = '';
  
    if (imc < 18.5) {
      classification = 'pain ficelle ';
    } else if (imc >= 18.5 && imc <= 24.9) {
      classification = 'baguette';
    } else if (imc >= 25 && imc <= 29.9) {
      classification = 'pain';
    } else if (imc >= 30 && imc <= 34.9) {
      classification = 'pain complet';
    } else if (imc >= 35 && imc <= 39.9) {
      classification = 'brioché';
    } else {
      classification = 'pain de campagne';
    }
  
    document.querySelector("p").innerHTML = "votre IMC "+ nom +" est de:"+imc + ' ' +" du type "+ classification;
  }