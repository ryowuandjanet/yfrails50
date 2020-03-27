class CreateLands < ActiveRecord::Migration[6.0]
  def change
    create_table :lands do |t|
      t.string :land_number
      t.string :land_url
      t.decimal :land_area, precision: 5, scale: 2
      t.integer :land_holding_point_personal
      t.integer :land_holding_point_all
      t.references :yfcase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
