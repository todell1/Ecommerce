# == Schema Information
#
# Table name: shipping_addresses
#
#  id           :bigint           not null, primary key
#  address      :string
#  apartment    :string
#  city         :string
#  country      :string
#  full_name    :string
#  phone_number :string
#  state        :string
#  zipcode      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_shipping_addresses_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class ShippingAddress < ApplicationRecord
  belongs_to :user

end
