class RemoveAmountCentsToDonation < ActiveRecord::Migration[7.0]
  def change
    remove_column :donations, :amount_cents
  end
end
