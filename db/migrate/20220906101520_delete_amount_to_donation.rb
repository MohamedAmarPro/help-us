class DeleteAmountToDonation < ActiveRecord::Migration[7.0]
  def change
    remove_column :donations, :amount
  end
end
