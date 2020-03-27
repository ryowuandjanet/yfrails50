class CreatePlusrateas < ActiveRecord::Migration[6.0]
  def change
    create_table :plusrateas do |t|
      t.string :persona
      t.decimal :plusa, precision: 4, scale: 2
      t.references :objectbuild, null: false, foreign_key: true

      t.timestamps
    end
  end
end
