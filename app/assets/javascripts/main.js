var counter=[],
    countWidth,
    floorCount=[],
    ceilCount=[],
    winWidth

$( window ).resize(image_cont_size);
$(document).ready(image_cont_size);

function image_cont_size () {
    countWidth=(Math.floor($(window).width()/256));
    winWidth=countWidth*128;
  $('.image').each(function (index){
    ceilCount[index]=Math.ceil($(this).find('ul li').length/countWidth)
    floorCount[index]=Math.floor($(this).find('ul li').length/countWidth)
    var imgHeight=$(this).find('ul li').length*130;
    $(this).css('width',imgHeight + 'px')
    $('.button-right').css('margin-left', winWidth+ 'px')
    $(this).stop()
      .animate({left: 0 + 'px'},1500);
      counter[index]=0;
  })
  $('.content').find('.second').css('width', winWidth + 'px')
}

function left_click (index) {
  counter[index]==undefined ? counter[index]=0 : counter[index]
  if (counter[index]==0) 
    {$('.image').eq(index).stop()
      .animate({ left: 128+'px'},250);
    setTimeout(function(){
      $('.image').eq(index).stop()
      .animate({ left: 0+'px' },250);
    }, 250);}
  else
    { counter[index]--;
    $('.image').eq(index).stop()
      .animate({left: -counter[index]*countWidth*128+'px' },1500);} 
}

function right_click (index) {
  
  counter[index]==undefined ? counter[index]=0 : counter[index]
  if ((counter[index]==ceilCount[index]-1)||((floorCount[index]==ceilCount[index])&&(floorCount[index]==1)))
    {$('.image').eq(index).stop()
      .animate({left: -($('.image').eq(index).find('ul li').length-(countWidth))*128-128+'px'},250);
    setTimeout(function(){
      $('.image').eq(index).stop()
        .animate({left: -($('.image').eq(index).find('ul li').length-(countWidth))*128+'px'},250);
      }, 250);
    }
  else {
    if ((floorCount[index]==counter[index]+1)&&(floorCount[index]!=ceilCount[index]))
    { counter[index]++
      $('.image').eq(index).stop()
            .animate({left: -($('.image').eq(index).find('ul li').length-(countWidth))*128+'px'},1500);}
    else
    { if (counter[index]!=ceilCount[index]-1)
      counter[index]++;
          $('.image').eq(index).stop()
            .animate({left: -counter[index]*countWidth*128+'px'},1500);}
    }
  }