class ChangeColNullToOrganizations < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:organizations, :sub_category_id, true)
  end
end
