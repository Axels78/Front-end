class Personnage {
  #nom;
  #vie;
  #attaque;
  #defense;
  constructor(_nom, _existe) {
    // this.nom = _nom;
    this.setnom(_nom);
    // this.vie = Personnage.nombreAleatoire();
    this.setvie(_vie);
    // this.attaque = Personnage.nombreAleatoire();
    this.setattaque(_attaque);
    // this.defense = Personnage.nombreAleatoire();
    this.setdefense(_defense);
    this.existe = false;

    if (this.nom != "") {
      this.existe = true;
      console.log("Nouveau personnage " + this.nom + " crée !");
    } else {
      this.existe = false;
      console.log("Erreur!!!");
    }
  }

  setnom(_nom) {
    this.#nom = _nom;
  }
  getnom() {
    return this.#nom;
  }

  setvie(_vie) {
    this.#vie = _vie;
  }
  getvie() {
    return this.#vie;
  }

  setattaque(_attaque) {
    this.#attaque = _attaque;
  }
  getattaque() {
    return this.#attaque;
  }
  
  setdefense(_defense) {
    this.#defense = _defense;
  }
  getdefense() {
    return this.#defense;
  }

  info() {
    console.log(
      "Le personnage " +
        this.getnom() +
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
      "Nouvelle attaque de " +
        this.getnom() +
        " contre " +
        defenseur.getnom() +
        " !!"
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
        "Le personnage " +
          this.getnom() +
          " est dead " +
          "existe = " +
          this.existe
      );
    }
    if (defenseur.vie <= 0) {
      defenseur.existe = false;
      console.log(
        "Le personnage " +
          defenseur.getnom() +
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
const nbrJoueur = 3; //nombre joueurs
var tableauPlayers = []; //création tableau saisie
let randomAtq;
let randomDef;
let randomAncienAtq = -1;

//-programme-
//Pour itération(i) allant de 0 à "nbrJoueur" alors
for (let i = 0; i < nbrJoueur; i++) {
  var player = new Personnage(prompt("Saisir un nom")); //saisie + création personnage
  player.info(); //informations personnage
  tableauPlayers.push(player); //incrémentation nom personnage
  console.log(tableauPlayers[i]); //vérification création personnage
}

/****************fonction partie 11 correction************** */
function joueurAleatoire(length) {
  return Math.floor(Math.random() * length);
}

//tant qu'il reste plus d'un joueur
while (tableauPlayers.length > 1) {
  //definit l'attaquant de façon aléatoire
  randomAtq = joueurAleatoire(tableauPlayers.length);
  //definit le defenseur
  randomDef = joueurAleatoire(tableauPlayers.length);
  //verifie si l'attaquant est different de l'ancien attaquant
  if (randomAtq != randomAncienAtq) {
    //verifie si l'attaquand est different du defenseur
    if (randomAtq != randomDef) {
      //attaque
      tableauPlayers[randomAtq].attaquer(tableauPlayers[randomDef]);
      try {
        //si l'attaquant est mort on le supprime du tableau
        if (tableauPlayers[randomAtq].existe == false) {
          tableauPlayers.splice(randomAtq, 1);
          console.log(
            "Le  vainqueur est : " + tableauPlayers[0].getnom().toString()
          );
        }
        //si le defenseur est mort on le supprime du tableau
        if (tableauPlayers[randomDef].existe == false) {
          tableauPlayers.splice(randomDef, 1);
          console.log(
            "Le  vainqueur est : " + tableauPlayers[0].getnom().toString()
          );
        }
        //on intercepte l'erreur si la donnée du tableau n'existe plus
      } catch (error) {}
      //l'attaquant devient l'ancien attaquant
      randomAncienAtq = randomAtq;
    }
  }
}
