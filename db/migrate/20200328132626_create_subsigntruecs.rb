class CreateSubsigntruecs < ActiveRecord::Migration[6.0]
  def change
    create_table :subsigntruecs do |t|
      t.string :signtruec
      t.references :yfcase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
