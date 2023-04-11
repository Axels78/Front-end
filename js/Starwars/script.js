let characterList = new Array();
let movieList=new Array()
let RecordsList=new Array();
let RecordsMovieList=new Array();
var starWarsList= document.querySelector('#perso');
var currentItem;

function AjouteBtnPeople(people){
    let listItem = document.createElement('button'); 
    listItem.id=people.name;
    listItem.innerHTML =   people.name ; 
   listItem.onclick = function(){createDetailPerso(people.url)};
    // listItem.addEventListener("click", createDetailPerso(people.url));
    starWarsList.appendChild(listItem);  
    return listItem;
}

function ShowInfosFilms(film){
   
    // let listItem = document.createElement('ul'); 
    // listItem.innerHTML = '<p>' + film.title + '</p>'; 
    // currentItem.appendChild(listItem);  

    console.log(film.title);
}
function createDetailPerso(url){
console.log(RecordsList);

// fetchAPI(url,"people",true);
fetchAPI(url,"people",true);
    // console.log(RecordsMovieList);
    // console.log(RecordsList);    

}
 
// async function fetchData (url) {
//     try {
//       const response = await Promise.resolve(
//         fetch(url).then(res => res.json())
//       )
//     //   console.log(response.result)
//       return response;
//     } catch (error) {
//       console.log("Error", error)
//     }
//   }
async function fetchAPI (url,type,urldonne){
    try{
    if (type!="" && urldonne==false){
        url+=type;
    }
    await fetch(url) 
        .then( async function(response) {   
        
            return   await response.json(); 
        })
        .then(function(json) {
            let result;
            if (urldonne){
                //l'url est donné donc on affiche qu'un élément... il n'y a pas de results dans le retour du json
                result=json;
            }else{
                result = json.results; 
            }

            
            console.log(result);
            switch(type){
                case "films":
                        movieList=movieList.concat(result);
                        console.log(movieList);

                        if (urldonne){
                            var detail=document.getElementById('Detail');

                            let NameFilmsItem=document.createElement('div');
                            NameFilmsItem.id=result.title;
                            NameFilmsItem.innerHTML=result.title;
                            detail.appendChild(NameFilmsItem);
                        }
                        // RecordsMovieList= movieList;
                        //ShowInfosFilms(result);
           
        /* Appelons notre fonction */
                    break;


                case "people":
                    //Chaque résultat est concaténé pour apparaître dans un tableau
                    characterList = characterList.concat(result);

                    if (urldonne){
                        // RecordsList= new Array();
                        RecordsList=result;

                        var detail=document.getElementById('Detail');

                        let NameItem=document.createElement('div');
                        NameItem.id=result.name;
                        NameItem.innerHTML=result.name;
                        detail.appendChild(NameItem);

                        for (i=0;i<result.films.length;i++){
                            console.log (result.films[i]);
                            fetchAPI(result.films[i],"films",true);

                        }


                    }
                    else {
                        for(r of result) {
                            // console.log(r.name);
                            console.log(r);
                            currentItem=AjouteBtnPeople(r);
                           
                            // if (r.name == "Luke Skywalker")
                            // {
                            //     console.log("Films de " + r.name + ":")
                            //     for (i=0; i<r.films.length;i++){
                            //         console.log(r.films[i]);
                            //         fetchAPI(r.films[i],"films",true);
                            //         console.log(movieList);
                            //     }
                            // }
                            RecordsList.push(r);
                        }
                }
                   // console.log(characterList);
                    // affiche(RecordsList);
                    // CreateList(json);
                   return(characterList);
                   
                        //.........
                    break;
                //...................
                default:
                    break;    
            }
      });
    } catch (error) {
        console.log("Error", error)
      }
}

function affiche(Records)
{
    for (r of Records){
        console.log(r.name);
    }
}

 fetchAPI('https://swapi.dev/api/',"people",false);

// console.log(RecordsList);
/****************************************************test fct film */
function afficherNomsFilms() {
    // Créer une requête HTTP
    var xhr = new XMLHttpRequest();
    // Ouvrir la requête HTTP
    xhr.open("GET",'./fichierjson/Movie.json', true);

    // Définir l'en-tête de la requête HTTP pour spécifier le type de contenu attendu
    xhr.setRequestHeader("Content-Type", "application/json");

    // Répondre à l'événement de chargement de la requête HTTP
    xhr.onload = function() {
      if (xhr.status === 200) {
        // Convertir le contenu JSON en objet JavaScript
        var films = JSON.parse(xhr.responseText);

        // Récupérer le conteneur HTML où les noms de films seront affichés
        var conteneur = document.getElementById("liste-films").querySelector("ul");

        // Boucle à travers chaque film et ajouter son nom au conteneur HTML
        for (var i = 0; i < films.length; i++) {
          var nomFilm = films[i].title;
          var elementListe = document.createElement("li");
          elementListe.innerHTML = nomFilm;
          conteneur.appendChild(elementListe);
        }
      } else {
        console.error(xhr.statusText);
      }
    };

    // Gérer les erreurs de la requête HTTP
    xhr.onerror = function() {
      console.error(xhr.statusText);
    };

    // Envoyer la requête HTTP
    xhr.send();
  }

  // Appeler la fonction pour afficher les noms de films
  afficherNomsFilms();