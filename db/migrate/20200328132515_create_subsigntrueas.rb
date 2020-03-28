class CreateSubsigntrueas < ActiveRecord::Migration[6.0]
  def change
    create_table :subsigntrueas do |t|
      t.string :signtruea
      t.references :yfcase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
