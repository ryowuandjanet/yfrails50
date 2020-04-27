class AddRightShareToPersonnal < ActiveRecord::Migration[6.0]
  def change
    add_column :personnals, :identity_code, :string
    add_column :personnals, :public_or_private, :string
    add_column :personnals, :right_share_person, :integer
    add_column :personnals, :right_share_all, :integer
  end
end
