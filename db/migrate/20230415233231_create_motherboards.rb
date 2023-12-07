class CreateMotherboards < ActiveRecord::Migration[7.0]
  def change
    create_table :motherboards do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end
