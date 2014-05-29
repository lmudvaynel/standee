# encoding: utf-8
ActiveAdmin.register Gallery do
  permit_params :name, :content,
    photos_attributes: [:id, :gallery_id, :alt, :title, :created_at, :updated_at, :image, :_destroy]
  

  index do
    column :name
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :content
      f.has_many :photos do |p|
        unless p.object.new_record?
          p.input :_destroy, :as => :boolean, :label => "Удалить изображение?", :required => false
        end
        p.input :image, :as => :file, :hint => p.object.image.present? \
          ? image_tag(p.object.image.url(:thumb))
          : p.template.content_tag(:span, "Изображение отсутствует")
        p.input :alt
        p.input :title
      end
    end
    f.actions
  end
end
