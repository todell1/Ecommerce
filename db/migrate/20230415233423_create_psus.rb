class CreatePsus < ActiveRecord::Migration[7.0]
  def change
    create_table :psus do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :quantity
      t.integer :wattage
      t.string :efficiency
      t.string :form

      t.timestamps
    end
  end
end
