class CreateCpus < ActiveRecord::Migration[7.0]
  def change
    create_table :cpus do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :quantity
      t.string :tdp
      t.string :socket

      t.timestamps
    end
  end
end
