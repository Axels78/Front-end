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