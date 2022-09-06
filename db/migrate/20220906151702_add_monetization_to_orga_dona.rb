class AddMonetizationToOrgaDona < ActiveRecord::Migration[7.0]
  def change
    remove_column :orga_donas, :price
    add_monetize :orga_donas, :price, currency: { present: false }
  end
end
