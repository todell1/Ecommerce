# == Schema Information
#
# Table name: psus
#
#  id          :bigint           not null, primary key
#  description :text
#  efficiency  :string
#  form        :string
#  name        :string
#  price       :decimal(, )
#  quantity    :integer
#  wattage     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class PsuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
