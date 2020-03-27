class CreateObjectbuilds < ActiveRecord::Migration[6.0]
  def change
    create_table :objectbuilds do |t|
      t.string :address
      t.integer :total_price
      t.decimal :build_area, precision: 9, scale: 2
      t.decimal :house_age, precision: 5, scale: 2
      t.string :floor_height
      t.string :objectbuild_url
      t.string :surveyora
      t.string :surveyorb
      t.decimal :plusa, precision: 3, scale: 2
      t.decimal :plusb, precision: 3, scale: 2
      t.references :yfcase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
