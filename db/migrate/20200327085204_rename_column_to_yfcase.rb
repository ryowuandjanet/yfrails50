class RenameColumnToYfcase < ActiveRecord::Migration[6.0]
  def change
 	remove_column :yfcases, :occupy
    remove_column :yfcases, :register
    remove_column :yfcases, :parking_space
    remove_column :yfcases, :management_fee
    remove_column :yfcases, :rent
    remove_column :yfcases, :leak
    remove_column :yfcases, :easy_parking
    remove_column :yfcases, :railway
    remove_column :yfcases, :vegetable_market
    remove_column :yfcases, :supermarket
    remove_column :yfcases, :school
    remove_column :yfcases, :park
    remove_column :yfcases, :post_office
    remove_column :yfcases, :main_road
    remove_column :yfcases, :water_and_power_failure
    remove_column :yfcases, :good_vision
 	add_column :yfcases, :occupy, :boolean
    add_column :yfcases, :register, :boolean
    add_column :yfcases, :parking_space, :boolean
    add_column :yfcases, :management_fee, :boolean
    add_column :yfcases, :rent, :boolean
    add_column :yfcases, :leak, :boolean
    add_column :yfcases, :easy_parking, :boolean
    add_column :yfcases, :railway, :boolean
    add_column :yfcases, :vegetable_market, :boolean
    add_column :yfcases, :supermarket, :boolean
    add_column :yfcases, :school, :boolean
    add_column :yfcases, :park, :boolean
    add_column :yfcases, :post_office, :boolean
    add_column :yfcases, :main_road, :boolean
    add_column :yfcases, :water_and_power_failure, :boolean
    add_column :yfcases, :good_vision, :boolean
  end
end
