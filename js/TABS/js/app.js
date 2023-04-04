// Récupérer le sélecteur .about, tous les sélecteurs .tab-btn et .content

// Ecouter l'évènement 'click' sur .

// Récupérer la valeur de l'id de l'élément courant avec e.target.dataset.id

// voir tuto https://codepen.io/dizakids/pen/WNNVLEz

  // si id
  
    // supprimer .active sur les autres boutons

    // le btn courant devient .active

    // supprimer .active sur les autres contenus

    // récupérer le contenu courant grâce à l'id

    // ajouter .active au contenu courant
// Récupérer le sélecteur .about, tous les sélecteurs .tab-btn et .content
const about = document.querySelector('.about');
const buttons = document.querySelectorAll('.tab-btn');
const contents = document.querySelectorAll('.content');

// Ecouter l'évènement 'click' sur .about
about.addEventListener('click', function(e) {
  // Récupérer la valeur de l'id de l'élément courant avec e.target.dataset.id
  const id = e.target.dataset.id;

  // Vérifier si un id a été récupéré
  if (id) {
    // supprimer .active sur les autres boutons
    buttons.forEach(function(btn) {
      btn.classList.remove('active');
    });
    
    // le btn courant devient .active
    e.target.classList.add('active');

    // supprimer .active sur les autres contenus
    contents.forEach(function(content) {
      content.classList.remove('active');
    });

    // récupérer le contenu courant grâce à l'id
    const element = document.getElementById(id);

    // ajouter .active au contenu courant
    element.classList.add('active');
  }
});