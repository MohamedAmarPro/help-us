class AddPhotoToSubcategories < ActiveRecord::Migration[7.0]
  def change
    add_column :sub_categories, :photo, :string
  end
end
