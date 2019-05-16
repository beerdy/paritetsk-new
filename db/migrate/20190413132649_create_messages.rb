class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
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
