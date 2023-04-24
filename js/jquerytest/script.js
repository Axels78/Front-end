/*$(function(){
    $("#p1").click(function(){
        $(this).hide();
    });
});
$(document).ready(function(){
    let pspan = $("p").has("span").css("color", "orange");
});
$(document).ready(function(){
    $("span").filter(".souligne").css("color", "green");
});
$(document).ready(function(){
    $("span").not(".souligne").css("color", "purple");
});
$(document).ready(function(){
    $("span").first().css("color", "green");
    $("span").eq(1).css("color", "blue");
    $("span").last().css("color", "orange");
});
$(document).ready(function(){
    /*Cible l'élément parent direct de chaque élément li et ajoute 
    une bordure autour*
    $("li").parent().css("border", "1px solid black");

    /*Cible l'élément parent direct de chaque élément li uniquement si
    il possède un id="parents" et change la couleur de fond en bleu*
    $("li").parent("#parents").css("background-color", "lightBlue");
});
$(document).ready(function(){
    /*Sélectionne tous les ancêtres des éléments ul et ajoute une bordure 
    noire d'1px autour de chacun d'entre eux*
    $("ul").parents().css("border", "1px solid black");

    /*Ne cible que les ancêtres des éléments ul qui sont des div et change 
    leur couleur de fond en bleu*
    $("ul").parents("div").css("background-color", "lightBlue");
});*/
$(document).ready(function(){
    /*Sélectionne tous les ancêtres de l'élément qui possède l'id="enfants" 
    jusqu'au premier ancêtre possédant une class="conteneur" sans l'inclure*/
    $("#enfants").parentsUntil(".conteneur").css("border", "1px solid black");
});
$(document).ready(function(){
    /*Sélectionne tous les enfants (descendants directs) des éléments possédant
    un attribut class="conteneur"*/
    $(".conteneur").children().css("border", "1px solid black");

    /*Sélectionne uniquement les éléments h1 descendants directs des éléments 
    possédant un attribut class="conteneur"*/
    $(".conteneur").children("h1").css("color", "blue");

    /*Cible tous les descendants de l'élément possédant l'id="methodes" qui 
    possèdent un attribut class="bglb"*/
    $("#methodes").find(".bglb").css("background-color", "lightBlue");
});
$(document).ready(function(){
    /*Sélectionne les éléments li qui sont les premiers enfants de leur parent 
    puis récupère tous leurs frères et leur  applique une couleur de texte bleue*/
    $("li:first-child").siblings().css("color", "blue");

    /*Sélectionne les éléments li qui sont les premiers enfants de leur parent et
    ne récupère que les éléments frères qui occupent une place impaire en comptant à partir de li:first-child*/
    $("li:first-child").siblings(":odd").css("text-decoration", "underline");
});
$(document).ready(function(){
    //On utilise html() comme getter
    let page = $("body").html();
    let p1 = $("#p1").html();

    //On affiche le contenu de nos variables dans la console 
    console.log("Page : " + page);
    console.log("p1 : " + p1);

    //On utilise html() comme setter
    $("#p2").html("<strong>Nouveau contenu !</strong>");
});
var app=Vue.createApp({
    template : "<counter />",
    });
    app.component("counter",{
    template : "Le compteur vaut : {{count}}",
    data(){
    return {
    count: 0
    }
    }
    })
    var vm=app.mount("div#app");