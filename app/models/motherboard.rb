# == Schema Information
#
# Table name: motherboards
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  price       :decimal(, )
#  quantity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Motherboard < ApplicationRecord
    has_one_attached :image
    default_scope { order(created_at: :asc) }

    Motherboard.find_or_create_by(
        name: 'Asus X670E-I ROG Strix',
        price: 469.99,
        description: '',
        quantity: 2,
    )

    Motherboard.find_or_create_by(
        name: 'MSI MPG B65I',
        price: 239.99,
        description: '',
        quantity: 2,
    )

    Motherboard.find_or_create_by(
        name: 'Gigabyte B65OI Aorus Ultra',
        price: 259.99,
        description: '',
        quantity: 2,
    )

    Motherboard.find_or_create_by(
        name: 'ASUS ROG Strix Z970-I',
        price: 454.84,
        description: '',
        quantity: 2,
    )

    Motherboard.find_or_create_by(
        name: 'AsRock Z790M-ITX',
        price: 229.99,
        description: '',
        quantity: 2,
    )

    Motherboard.find_or_create_by(
        name: 'ASUS ROG Strix B760-I',
        price: 219.99,
        description: '',
        quantity: 2,
    )
end