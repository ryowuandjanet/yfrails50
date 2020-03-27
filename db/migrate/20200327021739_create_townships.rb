class CreateTownships < ActiveRecord::Migration[6.0]
  def change
    create_table :townships do |t|
      t.string :name
      t.string :zip_code
      t.string :district_court
      t.string :land_office
      t.string :finance_and_tax_bureau
      t.string :police_station
      t.string :irs
      t.string :home_office

      t.timestamps
    end
  end
end
