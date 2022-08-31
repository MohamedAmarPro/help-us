class RemoveSubCategoryToCategory < ActiveRecord::Migration[7.0]
  def change
    remove_reference :categories, :sub_category, index: true, foreign_key: true
  end
end
