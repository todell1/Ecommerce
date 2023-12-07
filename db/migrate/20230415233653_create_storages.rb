class CreateStorages < ActiveRecord::Migration[7.0]
  def change
    create_table :storages do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :quantity
      t.string :storage_type
      t.string :gen
      t.string :storage_size
      t.integer :speed

      t.timestamps
    end
  end
end
