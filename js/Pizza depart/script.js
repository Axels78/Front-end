var btn = document.getElementsByClassName('button')[0];
btn.addEventListener('click', ChargeInfosJson());

function ChargeInfosJson() {
    fetch('pizza.json')
        .then((response) => {
            return response.json();
        })
        .then((data) => {
            console.log(data);
            createdivs(data);
        });
}
function createdivs(_data) {
    var preview=document.getElementsByClassName('preview')[0];
    preview.innerHTML="";
    var pizzerianame=document.createElement("div");
    pizzerianame.innerHTML=_data.name;
    pizzerianame.setAttribute('id','nompizza')
    var pizzeraslogan=document.createElement("div");
    pizzeraslogan.innerHTML=_data.slogan;
    pizzeraslogan.setAttribute('id','slogan');

    preview.appendChild(pizzerianame);
    preview.appendChild(pizzeraslogan);
}