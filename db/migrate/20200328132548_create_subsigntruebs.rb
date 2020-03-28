class CreateSubsigntruebs < ActiveRecord::Migration[6.0]
  def change
    create_table :subsigntruebs do |t|
      t.string :signtrueb
      t.references :yfcase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
