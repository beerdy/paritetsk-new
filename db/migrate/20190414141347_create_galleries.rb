class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :title
      t.text :description
      t.text :slave
      t.string :url
      t.integer :sort
      t.attachment :image

      t.timestamps
    end
  end
end
