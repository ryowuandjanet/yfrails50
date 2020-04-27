class AddAgentToPersonnel < ActiveRecord::Migration[6.0]
  def change
    add_column :personnals,:is_original_owner,:boolean
    add_column :personnals,:is_new_owner,:boolean
    add_column :personnals,:is_deed_tax_agent,:boolean
    add_column :personnals,:is_tax_agent,:boolean
  end
end
