# encoding: utf-8

pages_names = {
  index: 'Главная'
}
Page.reset_column_information
pages_names.each do |page_slug, page_name|
  parent_page = Page.create! slug: page_slug, name: page_name
end