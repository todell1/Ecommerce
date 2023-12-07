class AddPaymentInfoIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :payment_info_id, :integer
    add_index :orders, :payment_info_id
  end
end
