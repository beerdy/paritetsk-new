class AddCategoryToGallery < ActiveRecord::Migration[5.1]
  def change
    add_reference :galleries, :category, foreign_key: true
  end
end
