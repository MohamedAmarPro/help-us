class AddPhotoToOrganizations < ActiveRecord::Migration[7.0]
  def change
    add_column :organizations, :photo, :string
  end
end
