# encoding: utf-8
gallery_names = ['Вывески',
                'Широкоформатная печать интерьерная печать',
                'Выставочные стенды',
                'Pos-материалы',
                'Стенди',
                'Мобильные стенди',
                'Дизайн']

gallery_names.each_with_index do |name,index|
  Gallery.create! name: name
  @gallery=Gallery.find_by_name(name)
  [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].each do |value| 
    @gallery.photos.create! image: open(File.join(Rails.root, "public/sampl-5.jpg")),
                              alt: "картинка_"+index.to_s+"_"+value.to_s
  end
end