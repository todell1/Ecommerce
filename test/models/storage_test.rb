# == Schema Information
#
# Table name: storages
#
#  id           :bigint           not null, primary key
#  description  :text
#  gen          :string
#  name         :string
#  price        :decimal(, )
#  quantity     :integer
#  speed        :integer
#  storage_size :string
#  storage_type :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class StorageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
