# == Schema Information
#
# Table name: cpus
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  price       :decimal(, )
#  quantity    :integer
#  socket      :string
#  tdp         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class CpuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
