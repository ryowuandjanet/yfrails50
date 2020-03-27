class CreatePersonnals < ActiveRecord::Migration[6.0]
  def change
    create_table :personnals do |t|
      t.boolean :is_debtor
      t.boolean :is_creditor
      t.boolean :is_land_owner
      t.boolean :is_build_owner
      t.string :name
      t.string :identity_card
      t.datetime :birthday
      t.string :other_address
      t.string :local_phone
      t.string :mobile_phone
      t.string :personnal_notes
      t.references :yfcase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
