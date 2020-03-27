class CreateBuilds < ActiveRecord::Migration[6.0]
  def change
    create_table :builds do |t|
      t.string :build_number
      t.string :build_url
      t.decimal :build_area, precision: 5, scale: 2
      t.integer :build_holding_point_personal
      t.integer :build_holding_point_all
      t.string :build_type_use
      t.string :use_partition
      t.references :yfcase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
