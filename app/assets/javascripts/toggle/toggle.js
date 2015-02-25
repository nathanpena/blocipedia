$(function(){
if ( window.location.hash == "#subscription" )  
  $('#dashboard').removeClass('active');
  $('li').eq(1).removeClass('active');
  $('#subscription').addClass('active');
  $('li').eq(2).addClass('active');
});