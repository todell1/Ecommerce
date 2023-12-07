class CreateCoolers < ActiveRecord::Migration[7.0]
  def change
    create_table :coolers do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :quantity
      t.string :socket
      t.decimal :height

      t.timestamps
    end
  end
end
