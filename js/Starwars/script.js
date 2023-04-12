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
/*********************************************************barre de recherche des personnages */

/****************************************************test fct film **************************************************/
/***********************animation transition****** */
window.addEventListener('load', function() {
    var loader = document.querySelector('.loader');
    loader.style.display = 'none';
    document.getElementById('content').style.display = 'block';
  });
  document.addEventListener('DOMContentLoaded', function() {
    var links = document.querySelectorAll('a');
    for (var i = 0; i < links.length; i++) {
      links[i].addEventListener('click', function(event) {
        event.preventDefault();
        var loader = document.querySelector('.loader');
        loader.style.display = 'block';
        var href = this.getAttribute('href');
        setTimeout(function() {
          window.location = href;
        }, 2000);
      });
    }
  });
 /**************sabre laser fct*************** */
 const lightsaber = document.querySelector('.lightsaber');
let isPlaying = false;

document.addEventListener('mousemove', (event) => {
  if (!isPlaying) {
    const x = event.clientX;
    const y = event.clientY;
    lightsaber.style.top = `${y}px`;
    lightsaber.style.left = `${x}px`;
  }
});

lightsaber.addEventListener('mouseenter', () => {
  isPlaying = true;
  const audio = new Audio('lightsaber.mp3');
  audio.play();
});

lightsaber.addEventListener('ended', () => {
  isPlaying = false;
});
/***************bouton rebélion***************** */
const rejoindreBtn = document.getElementById('rejoindre-la-rebellion');

rejoindreBtn.addEventListener('click', () => {
  // Ajouter ici votre code pour la fonctionnalité de votre bouton
  alert('Vous avez rejoint la Rébellion !');
});