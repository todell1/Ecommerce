class CreateShippingAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :shipping_addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :full_name
      t.string :address
      t.string :apartment
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone_number

      t.timestamps
    end
  end
end
