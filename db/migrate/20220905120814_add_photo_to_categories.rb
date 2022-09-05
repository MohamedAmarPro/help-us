class AddPhotoToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :photo, :string
  end
end
