module ApplicationHelper
  def facebook_tag
    a=request.original_url
    "<meta property='og:image' content='http://allsoft.ru/bitrix/templates/allsoft2011/images/8let/dragon_normal.jpg'/>"+
    "<meta property='og:title' content='#{@og[:title]}'/>"+
    "<meta property='og:description' content='#{@og[:description]}' />"
  end
end
