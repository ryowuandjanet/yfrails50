class AddAddressFieldToPersonnal < ActiveRecord::Migration[6.0]
  def change
	add_column :personnals, :person_country , :string
	add_column :personnals, :person_township , :string
	add_column :personnals, :person_village , :string
	add_column :personnals, :person_neighbor , :string
	add_column :personnals, :person_street , :string
	add_column :personnals, :person_section , :string
	add_column :personnals, :person_lane , :string
	add_column :personnals, :person_alley , :string
	add_column :personnals, :person_number , :string
	add_column :personnals, :person_floor , :string
	remove_column :personnals, :other_address
  end
end
