var option = {
    weekday: "long",
    year: "numeric",
    month: "long",
    day: "numeric",
}


var booksList = new Array();
var categoriesList = new Array();
var authorsList = new Array();

window.addEventListener("load", jsonOnLoad());

 /*document.getElementById("listAuhors").addEventListener("click" , () => {
    document
    .getElementById("listAuthors")
    .addEventListener("change", ChargeByAuthors());
});*/

function jsonOnLoad() {
    fetch("books.json")
        .then((response) => {
            return response.json();
        })
        .then((booksData) => {
            console.log(booksData);
            createList(booksData);
        });
}

function createList(_data) {
    for (let i = 0; i < _data.length; i++) {
        let book = _data[i];
        booksList.push(book);

        for (let x = 0; x < book.authors.length; x++) {
            var author = book.authors[x];
            console.log(author);
            if (authorsList.indexOf(author) == -1) {
                authorsList.push(author);
            }
        }
        for (let z = 0; z < book.categories.length; z++) {
            var categorie = book.categories[z];
            console.log(categorie);
            if (categoriesList.indexOf(categorie) == -1) {
                categoriesList.push(categorie);
            }
        }

    }
    booksList.sort();
    authorsList.sort();
    categoriesList.sort();
    for (let y = 0; y < authorsList.length; y++) {
        var option = document.createElement("option");
        option.value = authorsList[y];
        option.innerText = authorsList[y];
        document.getElementById("listAuthors").appendChild(option);
    }
    for (let f = 0; f < categoriesList.length; f++) {
        var option = document.createElement("option");
        option.value = categoriesList[f];
        option.innerText = categoriesList[f];
        document.getElementById("listCategories").appendChild(option);
    }
    showBooks(booksList);
}

function showBooks(_booksList) {
    document.getElementById("booksList").innerHTML = "";

    for (let g = 0; g < _booksList.length; g++) {
        var bookCard = document.createElement("div");
        bookCard.setAttribute("class", "card mb-4");
        if (
            _booksList[g].thumbnailUrl == undefined ||
            _booksList[g].thumbnailUrl == null
        ) {
            _booksList[g].thumbnailUrl = "https://p1.storage.canalblog.com/14/48/1145642/91330992_o.png";

        }
        var titre;
        if (_booksList[g].title.length > 20) {
            titre = _booksList[g].title.substring(0, 20) + "(...)"
        } else {
            titre = _booksList[g].title;

        }
        var description;
        var descriptionshort;
        if (
            _booksList[g].shortDescription == undefined ||
            _booksList[g].shortDescription == null
        ) {
            description = "";
            descriptionshort = "";
        }
        else {
            if (_booksList[g].shortDescription.length > 20) {
                descriptionshort = _booksList[g].shortDescription.substring(0, 20) + "(...)";
                description = _booksList[g].shortDescription;
            }
            else {
                description = _booksList[g].shortDescription;
                descriptionshort = _booksList[g].shortDescription;
            }
        }

        var datePubli;
        try {
            datePubli = newDate(
                _booksList[g].publishedDate.dt_txt).toLocaleDateString("fr-FR", option);
        } catch (error) {
            datePubli = "Pas de date de publication";
        };

        bookCard.innerHTML = '<image src="' + _booksList[g].thumbnailUrl + '"/>' +
            '<h1 class="bookTitle"><span class="infobulle" title="' +
            _booksList[g].title + '">' +
            titre + "</span></h1>" +
            '<h4>' + datePubli + '</h4>';
        if (description != "") {
            bookCard.innerHTML +='<h4> <span class= "infobulle" title="' +
                _booksList[g].shortDescription + 
                '">' +
                description + 
                "</span></h4>";
        };

        document.getElementById("booksList").appendChild(bookCard) ;
    }
}
/*function ChargeByAuthors(){
    var e=document.getElementById("listAuthors") ;
    var strAuthors=f.option[e.selectedIndex].innerText ;
    var booksByAuthorsList =new Array();
    if (strAuthors==""){
        showBooks(booksList);
    }else{
        for (var x=0 ;x<booksList.length;x++){
            var bookByAuthors = booksList[x];
            if(bookByAuthors.authors.indexOf(strAuthors) != -1){
                booksByAuthorsList.push(bookByAuthors) ;
            }
        }
    }
}

function ChargeByCategories(){
    var e=document.getElementById("listCategories") ;
    var sortCategories=f.option[f.selectedIndex].innerText ;
    var booksByCategoriesList =new Array();
    if (sortCategories==""){
        showBooks(booksList);
    }else{
        for (var x=0 ;x<booksList.length;x++){
            var booksByCategories = booksList[x];
            if(bookByAuthors.authors.indexOf(sortCategories) != -1){
                booksByCategoriesList.push(booksByCategories) ;
            }
        }
    }
}*/
function showLoading() {
    var appDiv = document.getElement('body');
    appDiv.innerHTML = `<h1>JS Starter</h1>`;
    document.querySelector('.img').onload = () => {
      const img = document.querySelector('.img');
      const loading = document.querySelector('.lds-ring');
      img.style.display = 'block';
      loading.parentNode.removeChild(loading);
    }
  }





document.getElementById("listAuthors").addEventListener("change", () => {
   let sortAuthors = document.getElementById("listAuthors").value;
   let sortBooks = booksList.filter(book => book.authors.includes(sortAuthors));
    showBooks(sortBooks);
});

document.getElementById("listCategories").addEventListener("change", () => {
    let sortCategories = document.getElementById("listCategories").value;
   let catsortBooks = booksList.filter(book => book.categories.includes(sortCategories));
    showBooks(catsortBooks);
});




