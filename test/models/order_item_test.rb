# == Schema Information
#
# Table name: order_items
#
#  id               :bigint           not null, primary key
#  productable_type :string           not null
#  quantity         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  order_id         :bigint           not null
#  productable_id   :bigint           not null
#
# Indexes
#
#  index_order_items_on_order_id     (order_id)
#  index_order_items_on_productable  (productable_type,productable_id)
#
# Foreign Keys
#
#  fk_rails_...  (order_id => orders.id)
#
require "test_helper"

class OrderItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
