class Page < ActiveRecord::Base
  validates :slug, presence: true, uniqueness: true
  validates :name, presence: true
end
