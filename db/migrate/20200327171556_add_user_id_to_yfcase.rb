class AddUserIdToYfcase < ActiveRecord::Migration[6.0]
  def change
  	add_column :yfcases, :user_id, :integer
  	add_index :yfcases, :user_id
  end
end
