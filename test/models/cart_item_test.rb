# == Schema Information
#
# Table name: cart_items
#
#  id               :bigint           not null, primary key
#  item_type        :string
#  productable_type :string           not null
#  quantity         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  cart_id          :bigint           not null
#  item_id          :integer
#  productable_id   :bigint           not null
#
# Indexes
#
#  index_cart_items_on_cart_id      (cart_id)
#  index_cart_items_on_productable  (productable_type,productable_id)
#
# Foreign Keys
#
#  fk_rails_...  (cart_id => carts.id)
#
require "test_helper"

class CartItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
