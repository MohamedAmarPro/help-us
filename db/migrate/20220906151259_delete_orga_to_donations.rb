class DeleteOrgaToDonations < ActiveRecord::Migration[7.0]
  def change
    remove_reference :donations, :organization
  end
end
