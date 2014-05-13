function update_tag(a) {
  var stripped_url = document.location.toString().split("#"),
      j=0,
      b=[]
  n=stripped_url[1].indexOf("l")
  m=stripped_url[1].indexOf("]")
  gallery_number=parseInt(stripped_url[1].substr(n+2,m-n-2),10)+1
  i=stripped_url[1].indexOf("/")
  k=stripped_url[1].length
  photo_number=parseInt(stripped_url[1].substr(i+1,k-i),10)
  for (var i = a.length - 1; i >= 0; i--) {
    if (a[i].gallery_id==gallery_number) {
      b[j]=a[i]
      j++
    }
  };
  b=b.sort(function(a,b) { return parseFloat(a.id) - parseFloat(b.id) } );
  console.log(b)
  console.log(b[photo_number].image)
  d=(photo_number+1).toString()
  e="000"
  f=e.substr(0,3-d.length)+d
  g=b[photo_number].image
  c="system/photos/images/000/000/"+f+"/gallery/"+g
  h=stripped_url[0]
  q=b[photo_number].alt
  console.log(q)
  $('meta[property="og:image"]').attr('content',h+c)
  $('meta[property="og:content"]').attr('content',q)
  $('meta[property="og:title"]').attr('content',"hello world")
}