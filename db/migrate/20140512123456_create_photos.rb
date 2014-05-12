class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :alt
      t.string :title
      
      t.timestamps
    end
  end
end