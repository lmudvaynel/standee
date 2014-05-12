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
  @gallery=Gallery.find_by_name(name)
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
  @gallery.photos.create! image: open("/home/artem/IMG_11052014_002722.png")
end