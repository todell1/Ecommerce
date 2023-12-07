# == Schema Information
#
# Table name: orders
#
#  id              :bigint           not null, primary key
#  order_number    :string
#  status          :string
#  total           :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  payment_info_id :integer
#  user_id         :bigint           not null
#
# Indexes
#
#  index_orders_on_payment_info_id  (payment_info_id)
#  index_orders_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :payment_info
  has_many :order_items
  has_many :cart_items
  
  def order_items_summary
    # implementation
  end
end

