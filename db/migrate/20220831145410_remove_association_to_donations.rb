class RemoveAssociationToDonations < ActiveRecord::Migration[7.0]
  def change
    remove_reference :donations, :association
  end
end
