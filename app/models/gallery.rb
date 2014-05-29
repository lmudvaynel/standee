class Gallery < ActiveRecord::Base
  has_many :photos

  accepts_nested_attributes_for :photos, :allow_destroy => true, :reject_if => :all_blank

  def to_hash_g
    {
      id: id,
      name: name,
      content: content
    }
  end
end
