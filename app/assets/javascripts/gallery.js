$(document).ready(function () {
  var stripped_url = document.location.toString().split("#");
  $('.image').each(function (){
    $(this).find("a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
  })
});