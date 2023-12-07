# == Schema Information
#
# Table name: coolers
#
#  id          :bigint           not null, primary key
#  description :text
#  height      :decimal(, )
#  name        :string
#  price       :decimal(, )
#  quantity    :integer
#  socket      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class CoolerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
