class RenameAssociationTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :associations, :organizations
  end
end
