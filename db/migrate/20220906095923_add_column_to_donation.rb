class AddColumnToDonation < ActiveRecord::Migration[7.0]
  def change
    add_column :donations, :state, :string
    add_column :donations, :checkout_session_id, :string
    add_monetize :donations, :amount, currency: { present: false }
  end
end
