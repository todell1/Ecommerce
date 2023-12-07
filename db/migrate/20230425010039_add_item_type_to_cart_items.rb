class AddItemTypeToCartItems < ActiveRecord::Migration[6.1]
  def change
    add_column :cart_items, :item_type, :string
  end
end
