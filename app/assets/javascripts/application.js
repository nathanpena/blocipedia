// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
$(function(){
if ( window.location.hash == "#subscription" ) {
  $('#dashboard').removeClass('active');
  $('li').eq(1).removeClass('active');
  $('#subscription').addClass('active');
  $('li').eq(2).addClass('active');
} 
else {
  $('#dashboard').addClass('active');
}

});
//= require turbolinks
//= require_tree .
