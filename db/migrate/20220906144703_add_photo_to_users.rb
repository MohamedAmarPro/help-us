class AddPhotoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :photo, :string
    remove_column :users, :pseudo
  end
end
