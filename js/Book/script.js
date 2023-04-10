var option={
    weekday:"long",
    year:"numeric",
    month:"long",
    day:"numeric",
};
var booksList=new Array();
var authorsList=new Array();
var cathegorieList=new Array();


window.addEventListener("load",jsonOnLoad());

document.getElementById("listAuthors").addEventListener("click",()=>{document.getElementById("listAuthors").addEventListener("change",ChargeByAuthor());})

function jsonOnLoad(){
    fetch("books.json")
    .then((response)=>{
        return response.json();
    })
    .then((booksData)=>{
        console.log(booksData);
        createList(booksData);
    });
}
function createList(_data){
    for(var x=0;x<_data.length;x++){
        var book =_data[x];
        booksList.push(book);
        for (var y=0;y<book.authors.length;y++){
            var author=book.authors[y];
            if(authorsList.indexOf(author)== -1){
                authorsList.push(author)
            }
        }
    }
        //ici on creera la liste des catégories
        /*function createCategoriesList(_data){
            var categoriesList = [];
            for(var x=0;x<_data.length;x++){
                var book =_data[x];
                for (var y=0;y<book.categories.length;y++){
                    var category=book.categories[y];
                    if(categoriesList.indexOf(category)== -1){
                        categoriesList.push(category);
                    }
                }
            }
    }*/
    //tri alphabétique des listes
    //categoriesList.sort();

    //
    booksList.sort();
    authorsList.sort();
    for(var x=0;x<authorsList.length;x++){
        var option=document.createElement("option");
        option.value=authorsList[x];
        document.getElementById("listAuthors").appendChild(option);
    }
    showBooks(booksList);
}
function showBooks(_booksList){
    document.getElementById("booksList").innerHTML="";
    for(var y=0;y<_booksList.length;y++){
        var bookCard=document.createElement("div");
        bookCard.setAttribute("class","card mb-4");
        if(_booksList[y].thumbnailUrl==undefined || _booksList[y].thumbnailUrl==null)
        {
            _booksList[y].thumbnailUrl="https://p1.storage.canalblog.com/14/48/1145642/91330992_o.png"
        }
        var titre;
        if(_booksList[y].title.length>20) {
            _booksList[y].title.length(0,20)+" (....)";
        }else{
            titre=_booksList[y].title;
        }
        var description;
        var descriptionshort;
        if(
            _booksList[y].shortDescription==undefined || _booksList[y].shortDescription==null
        ){
            description="";
            descriptionshort="";
        }
        else{
            if(_booksList[y].shortDescription.length>20){
                descriptionshort=_booksList[y].shortDescription.substring(0,20)+"(....)";
                description=_booksList[y].shortDescription;
            }
        }
        var datePubli;
        try {
            datePubli=new Date(_booksList[y].publishedDate.dt_txt).toLocaleDateString("fr-FR",option);
        } catch (error) {
            datePubli="pas de date de publication"
        }
        bookCard.innerHTML='<img src="'+ _booksList[y].thumbnailUrl +'"/>'+
        '<h1 class="bookTitle"><span class="infobulle"title="'+
        _booksList[y].title +'">'+titre +"</span></h1>"+
        '<h4>'+datePubli+'</h4>';
        if (description!=""){
            bookCard.innerHTML+='<h4> <span class="infobulle"title="'+booksList[y].shortDescription+'">'+
            description+"</span></h4>";
        }
        document.getElementById("bookslist").appendChild(bookCard);
    }

}
function ChargeByAuthor(){
    var e=document.getElementById("listAuthors");
    var strAuthors=e.options[e.selectedIndex].innerText;
    var booksByAuthorList=new Array();
    if(strAuthors==""){
        showBooks(booksList);
    }else{
        for(var x=0;x<booksList.length;x++){
            var bookByAuthor=booksList[x];
            if(bookByAuthor.authors.indexOf(strAuthors) !=-1){
                booksByAuthorList.push(bookByAuthor);
            }
        }
    }
    booksByAuthorList.sort();
    showBooks(booksByAuthorList);
}
function ChargeByCategory(){
    var c=document.getElementById("")
}
//fct nbr de page test
function getNumberOfPages(booksList) {
    let pagesList = [];
    for (let i = 0; i < booksList.length; i++) {
      pagesList.push(booksList[i].pages);
    }
    return pagesList;
  }