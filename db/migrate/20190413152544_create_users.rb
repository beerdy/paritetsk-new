class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.text :description
      t.string :document_uid
      t.string :document_name
      t.string :url
      t.integer :sort

      t.timestamps
    end
  end
end
