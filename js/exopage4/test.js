MyVar = "Bonjour ";
var reponse1 = window.prompt("saisissez votre nom");
var reponse2 = window.prompt("saisissez votre prénom");

if (window.confirm("Etes vous un homme ?") == true) {
    MyVar1 = "Monsieur";
    window.alert(MyVar + MyVar1 + reponse1 + reponse2);
}
else {
    MyVar2 = "Madame";
    window.alert(MyVar + MyVar2 + reponse1 + reponse2);
}