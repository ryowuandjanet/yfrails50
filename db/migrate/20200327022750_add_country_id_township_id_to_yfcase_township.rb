class AddCountryIdTownshipIdToYfcaseTownship < ActiveRecord::Migration[6.0]
  def change
  	add_column :yfcases, :country_id, :integer
  	add_column :yfcases, :township_id, :integer
  	add_column :townships, :country_id, :integer
  	add_index :yfcases, :country_id
  	add_index :yfcases, :township_id
  	add_index :townships, :country_id
  end
end
