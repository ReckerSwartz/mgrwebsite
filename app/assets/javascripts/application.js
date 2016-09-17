// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {

  $(".button-collapse").sideNav();
  $('.collapsible').collapsible();
 
  $('.carousel.carousel-slider').carousel({full_width: true});
  autoplay()   
    function autoplay() {
    $('.carousel').carousel('next');
    setTimeout(autoplay, 10000);
    }
  $('.button-collapse').sideNav({
      menuWidth: 240 });
  $(".button-collapse").off('click').sideNav({ closeOnClick: true });
  
  checkSize();
  $(window).resize(checkSize);
});

function checkSize(){
    if ($(".sampleClass").css("float") == "none" && $(".side-nav").length !=0){
         $("#main").css("padding-left", "200px");
    }else{
      $("#main").css("padding-left", "0");
    }
  }