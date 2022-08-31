class AddOrganizationToDonations < ActiveRecord::Migration[7.0]
  def change
    add_reference :donations, :organization, null: false, foreign_key: true
  end
end
