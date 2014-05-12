class Photo < ActiveRecord::Base  
  belongs_to :gallery
  
  has_attached_file :image,
                    :styles => {
                      :thumb => "300x300>",
                      :medium => "600x600>",
                      :gallery => "120x120#" 
                    }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg",     "image/png"] } 
end
