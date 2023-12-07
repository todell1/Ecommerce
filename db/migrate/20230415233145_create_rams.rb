class CreateRams < ActiveRecord::Migration[7.0]
  def change
    create_table :rams do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :quantity
      t.decimal :height

      t.timestamps
    end
  end
end
