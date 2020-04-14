class AddNameAndTimeToSubsigntrueas < ActiveRecord::Migration[6.0]
  def change
  	add_column :subsigntrueas, :signtruea_first_name, :string
  	add_column :subsigntrueas, :signtruea_last_name, :string
  	add_column :subsigntrueas, :signtruea_date, :date
  end
end
