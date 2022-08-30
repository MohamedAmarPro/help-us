class AddColumnsToAssociation < ActiveRecord::Migration[7.0]
  def change
    add_column :associations, :name, :string
    add_column :associations, :description, :string
  end
end
