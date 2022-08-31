class RemoveAssociationToEvents < ActiveRecord::Migration[7.0]
  def change
    remove_reference :events, :association
  end
end
