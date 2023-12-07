# == Schema Information
#
# Table name: gpus
#
#  id          :bigint           not null, primary key
#  description :text
#  length      :integer
#  name        :string
#  price       :decimal(, )
#  quantity    :integer
#  slots       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class GpuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
