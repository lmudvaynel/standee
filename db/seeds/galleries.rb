# encoding: utf-8

gallery_names = ['Вывески',
                'Широкоформатная печать интерьерная печать',
                'Выставочные стенды',
                'Pos-материалы',
                'Стенди',
                'Мобильные стенди',
                'Дизайн']

gallery_names.each do |name|
  Gallery.create! name: name
end