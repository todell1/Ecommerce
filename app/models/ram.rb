# == Schema Information
#
# Table name: rams
#
#  id          :bigint           not null, primary key
#  description :text
#  height      :decimal(, )
#  name        :string
#  price       :decimal(, )
#  quantity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Ram < ApplicationRecord
    has_one_attached :image
    default_scope { order(created_at: :asc) }

    Ram.find_or_create_by(
        name: 'CORSAIR Vengeance DDR5 32GB 5600mhz',
        price: 109.99,
        description: '',
        quantity: 2,
        height: 35,
    )

    Ram.find_or_create_by(
        name: 'G.Skill Trident Z5 DDR5 32GB 6000mhz',
        price: 137.99,
        description: '',
        quantity: 2,
        height: 45,
    )

    Ram.find_or_create_by(
        name: 'Kingston FURY Technology DDR5 16GB 5200mhz',
        price: 76.29,
        description: '',
        quantity: 2,
        height: 34.8,
    )

    Ram.find_or_create_by(
        name: 'TEAMGROUP T-Force Delta DDR5 32GB 5200mhz',
        price: 119.99,
        description: '',
        quantity: 2,
        height: 47,
    )

    Ram.find_or_create_by(
        name: 'CRUCIAL DDR5 16GB 4800mhz',
        price: 49.99,
        description: '',
        quantity: 2,
        height: 31.5,
    )

    Ram.find_or_create_by(
        name: 'Silicon Power DDR5 32GB 5600mhz',
        price: 95.99,
        description: '',
        quantity: 2,
        height: 37,
    )
end