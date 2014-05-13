module ApplicationHelper
  def facebook_tag
    a=request.original_url
    "<meta property='og:image' content='http://allsoft.ru/bitrix/templates/allsoft2011/images/8let/dragon_normal.jpg'/>"+
    "<meta property='og:title' content='Я – лицензионный Дракон!'/>"+
    "<meta property='og:description' content='Pезультат теста: Дракон почти Ваш «конек»! Вы пока не можете преподавать Драконоведение, но на верном пути!' />"
  end
end
