class CreateOrgaDonas < ActiveRecord::Migration[7.0]
  def change
    create_table :orga_donas do |t|
      t.integer :price
      t.references :donation, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
