class CreateGpus < ActiveRecord::Migration[7.0]
  def change
    create_table :gpus do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :quantity
      t.integer :length
      t.decimal :slots

      t.timestamps
    end
  end
end
