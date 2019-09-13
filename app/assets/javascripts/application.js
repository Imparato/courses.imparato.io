// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .
window.onscroll = function() {updateNavOnScroll()};

const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-imparato');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-hidden');
      } else {
        navbar.classList.remove('navbar-hidden');
      }
    });
  }
}

const updateNavOnScroll = () => {
  const navbar = document.querySelector('.navbar-imparato');
  const beginScroll = window.scrollY;
  // console.log(window.scrollY);
  if (navbar) {
      setTimeout(() => {
      if (window.scrollY - beginScroll < -200) {
        navbar.classList.remove('navbar-hidden');
      }
      else if (window.scrollY - beginScroll > 200) {
        console.log(window.scrollY - beginScroll);
        navbar.classList.add('navbar-hidden');
      }
  }, 700)
    }
};
