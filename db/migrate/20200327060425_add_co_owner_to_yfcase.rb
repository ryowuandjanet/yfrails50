class AddCoOwnerToYfcase < ActiveRecord::Migration[6.0]
  def change
  	add_column :yfcases, :co_owner, :boolean
  end
end
