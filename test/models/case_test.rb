# == Schema Information
#
# Table name: cases
#
#  id                      :bigint           not null, primary key
#  air_cooler_clearance    :integer
#  description             :text
#  gpu_clearance           :integer
#  gpu_slots               :decimal(, )
#  liquid_cooler_clearance :integer
#  name                    :string
#  price                   :decimal(, )
#  quantity                :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
require "test_helper"

class CaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
