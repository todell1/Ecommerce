class CreateCases < ActiveRecord::Migration[7.0]
  def change
    create_table :cases do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :quantity
      t.integer :gpu_clearance
      t.decimal :gpu_slots
      t.integer :air_cooler_clearance
      t.integer :liquid_cooler_clearance

      t.timestamps
    end
  end
end
