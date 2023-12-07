# == Schema Information
#
# Table name: prebuilds
#
#  id          :bigint           not null, primary key
#  case        :string
#  cooler      :string
#  cpu         :string
#  gpu         :string
#  motherboard :string
#  name        :string
#  price       :decimal(, )
#  psu         :string
#  quantity    :integer
#  ram         :string
#  storage     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class PrebuildTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
