class AddNameAndTimeToSubsigntruebsYfcases < ActiveRecord::Migration[6.0]
  def change
  	add_column :subsigntruebs, :signtrueb_first_name, :string
  	add_column :subsigntruebs, :signtrueb_last_name, :string
  	add_column :subsigntruebs, :signtrueb_date, :date
   	add_column :subsigntruecs, :signtruec_first_name, :string
  	add_column :subsigntruecs, :signtruec_last_name, :string
  	add_column :subsigntruecs, :signtruec_date, :date
  	add_column :yfcases, :final_decision_date, :date
  end
end
