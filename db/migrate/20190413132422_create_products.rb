class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.text :slave
      t.string :image1_uid
      t.string :image1_name
      t.string :image2_uid
      t.string :image2_name
      t.string :url
      t.integer :sort

      t.timestamps
    end
  end
end
