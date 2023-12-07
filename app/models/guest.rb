# == Schema Information
#
# Table name: guests
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cart_id    :bigint           not null
#
# Indexes
#
#  index_guests_on_cart_id  (cart_id)
#
# Foreign Keys
#
#  fk_rails_...  (cart_id => carts.id)
#
class Guest < ApplicationRecord
  belongs_to :cart
end
