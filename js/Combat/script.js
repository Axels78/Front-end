class Personnage {
  constructor(_nom, _existe) {
    this.nom = _nom;
    this.vie = Personnage.nombreAleatoire();
    this.attaque = Personnage.nombreAleatoire();
    this.defense = Personnage.nombreAleatoire();
    this.existe = false;

    if (this.nom != "") {
      this.existe = true;
      console.log("Nouveau personnage " + this.nom + " crée !");
    } else {
      this.existe = false;
      console.log("Erreur!!!");
    }
  }
  info() {
    console.log(
      "Le personnage " +
        this.nom +
        " a " +
        this.vie +
        " points de vie" +
        ", " +
        this.defense +
        " points d'attaque et " +
        this.defense +
        " points de défense"
    );
  }

  attaquer(defenseur) {
    console.log(
      "Nouvelle attaque de " + this.nom + " contre " + defenseur.nom + " !!"
    );
    if (this.attaque > defenseur.defense) {
      defenseur.vie -= 10;
    }
    if (this.attaque == defenseur.defense) {
      defenseur.vie -= 5;
    }
    if (this.attaque < defenseur.defense) {
      this.vie -= 5;
    }
    this.info();
    defenseur.info();
    if (this.vie <= 0) {
      this.existe = false;
      console.log(
        "Le personnage " + this.nom + " est dead " + "existe = " + this.existe
      );
    }
    if (defenseur.vie <= 0) {
      defenseur.existe = false;
      console.log(
        "Le personnage " +
          defenseur.nom +
          " est dead " +
          "existe = " +
          defenseur.existe
      );
    }
  }
  //
  static nombreAleatoire() {
    return Math.round((100 - 20) * Math.random() + 20);
  }
}




// //premier personnage
// var perso1 = new Personnage("Moussa"); //création personnage
// console.log(perso1); //vérification création personnage
// perso1.info(); //informations personnage

// //deuxième personnage
// var perso2 = new Personnage("Kévin"); //création personnage
// console.log(perso2); //vérification création personnage
// perso2.info(); //informations personnage

// //attaque
// perso2.attaquer(perso1);//attaque personnage 2 contre 1

// -variables-
const nbrJoueur = 2; //nombre joueurs
var tableauPlayers = []; //création tableau saisie

//-programme-
//Pour itération(i) allant de 0 à "nbrJoueur" alors
for (let i = 0; i < nbrJoueur; i++) {
  var player = new Personnage(prompt("Saisir un nom")); //saisie + création personnage
  player.info(); //informations personnage
  tableauPlayers.push(player); //incrémentation nom personnage
  console.log(tableauPlayers[i]); //vérification création personnage
}
