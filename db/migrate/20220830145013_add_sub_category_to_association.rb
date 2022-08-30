class AddSubCategoryToAssociation < ActiveRecord::Migration[7.0]
  def change
    add_reference :associations, :sub_category, null: false, foreign_key: true
  end
end
