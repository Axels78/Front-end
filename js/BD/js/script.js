/****************************** */
// Obtenez une référence à la balise div conteneur
let contenueDiv = document.getElementById("contenue");

// Bouclez à travers chaque album et créez une liste d'éléments HTML pour chaque album
let albumsList = "<ul>";
albums.forEach(album => {
    serie = series.get(album.idSerie);
    auteur = auteurs.get(album.idAuteur);
    albumsList += "<li>" + album.titre + " N°" + album.numero + " Série:" + serie.nom + " Auteur:" + auteur.nom +" Prix :"+album.prix+" €"+ "</li>";
});
albumsList += "</ul>";

// Ajouter la liste des albums à la balise div conteneur
contenueDiv.innerHTML = albumsList;
//recupération des boutons titre album et serie que lon selectionne
let btnTitre=document.getElementById("title");
let btnAlbum=document.getElementById("alboum");
let btnSerie=document.getElementById("Seriz");
/*********************************************foncion test pour afficher si je coche album */
function afficherAlbums(albums) {
    let resultatsDiv = document.getElementById("contenue");
    resultatsDiv.innerHTML = ""; // effacer le contenu précédent

    albums.forEach(album => {
        serie = series.get(album.idSerie);
        auteur = auteurs.get(album.idAuteur);
        let albumDiv = document.createElement("div");
        albumDiv.textContent = album.titre+" N°"+album.numero+" Série:"+serie.nom+" Auteur:"+auteur.nom;
        resultatsDiv.appendChild(albumDiv);
    });
}
/******************************************************************************** */
function afficherAlbumsParSerie() {
    var resultatDiv = document.getElementById("contenue");
    resultatDiv.innerHTML = ""; // Efface le contenu de la div
    for(var [idSerie, serie] of series.entries()) {
        var albumsSerie = [];
        // Recherche des albums de la série
        for (var [idAlbum, album] of albums.entries()) {
            if (album.idSerie == idSerie) {
                albumsSerie.push(album);
            }
        }
        // Affichage des albums de la série
        if (albumsSerie.length > 0) {
            var serieNom = serie.nom;
            var serieDiv = document.createElement("div");
            serieDiv.innerHTML = "<h2>" + serieNom + "</h2>";
            resultatDiv.appendChild(serieDiv);
            var albumsListe = document.createElement("ul");
            for (var i = 0; i < albumsSerie.length; i++) {
                var album = albumsSerie[i];
                var albumTitre = album.titre;
                var albumNumero = album.numero;
                var albumAuteur = auteurs.get(album.idAuteur).nom;
                var albumElement = document.createElement("li");
                albumElement.textContent = "Album N°" + albumNumero + " " + albumTitre + ", Auteur: " + albumAuteur;
                albumsListe.appendChild(albumElement);
            }
            serieDiv.appendChild(albumsListe);
        }
    }
}
//barre de recherche*************************************************************************************************
document.getElementById("cherche").addEventListener("submit", function(event) {
    // Empêcher le formulaire de se soumettre automatiquement
    event.preventDefault();

    // Récupérer la valeur de la barre de recherche
    const query = document.getElementById("searchb").value;

    // Utiliser la valeur pour effectuer une recherche
    // Ici, nous allons simplement afficher la valeur dans la console
    console.log(`Recherche : ${query}`);
  });