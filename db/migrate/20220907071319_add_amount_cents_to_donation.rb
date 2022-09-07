class AddAmountCentsToDonation < ActiveRecord::Migration[7.0]
  def change
    add_monetize :donations, :amount, currency: { present: false }
  end
end
