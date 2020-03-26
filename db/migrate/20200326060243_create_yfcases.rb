class CreateYfcases < ActiveRecord::Migration[6.0]
  def change
    create_table :yfcases do |t|
      t.string :case_number

      t.timestamps
    end
  end
end
