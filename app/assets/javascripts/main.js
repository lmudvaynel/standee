$( window ).resize(function() {
  $('.image').each(function (){
    var imgHeight=$(this).find('.element').length*128;
    $(this).css('width',imgHeight + 'px')
  })
});
$(document).ready(function() {
  $('.image').each(function (){
    var imgHeight=$(this).find('.element').length*128;
    $(this).css('width',imgHeight + 'px')
  })
});