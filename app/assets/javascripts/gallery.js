$(document).ready(function () {
  $('.line').mouseover(function(){
    var galId = $(this).attr('id-g');
    var div = document.getElementById("content");
    for (var i = b.length - 1; i >= 0; i--) {
      if (b[i].id==galId) {
        $('#name').text(b[i].name.toUpperCase());
        div.innerHTML = b[i].content;
      }
    };
    $(this).find('.name').css('font-family','CondPro-Bold')
  })
  .mouseleave(function(){
    var galId = $(this).attr('id-g');
    $(this).find('.name').css('font-family','CondPro')
  });

  $('.name').each(function (index){
    if (index==6)
      {$(this).css('border',0)}
  })
  var stripped_url = document.location.toString().split("#");
  $('.image').each(function (){
    $(this).find("a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
  })
});