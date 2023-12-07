class AddCountryToShippingAddresses < ActiveRecord::Migration[7.0]
  def change
    add_column :shipping_addresses, :country, :string
  end
end
