# == Schema Information
#
# Table name: payment_infos
#
#  id                 :bigint           not null, primary key
#  credit_card_number :string
#  name_on_card       :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint           not null
#
# Indexes
#
#  index_payment_infos_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class PaymentInfo < ApplicationRecord
  belongs_to :user
end
