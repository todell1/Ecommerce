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
class Psu < ApplicationRecord
    has_one_attached :image
    default_scope { order(created_at: :asc) }

    Psu.find_or_create_by(
        name: 'Corsair SF750',
        price: 173.89,
        description: '',
        quantity: 2,
        wattage: 750,
        efficiency: '80+ Platinum',
        form: 'SFX',
    )

    Psu.find_or_create_by(
        name: 'Phanteks Revolt SFX 750w',
        price: 159.99,
        description: '',
        quantity: 2,
        wattage: 750,
        efficiency: '80+ Platinum',
        form: 'SFX'
    )

    Psu.find_or_create_by(
        name: 'Cooler Master V850',
        price: 149.99,
        description: '',
        quantity: 2,
        wattage: 850,
        efficiency: '80+ Gold',
        form: 'SFX',
    )

    Psu.find_or_create_by(
        name: 'ASUS ROG Loki SFX-L',
        price: 336.20,
        description: '',
        quantity: 2,
        wattage: 1000,
        efficiency: '80+ Platinum',
        form: 'SFX-L',
    )

    Psu.find_or_create_by(
        name: 'Be Quiet! Power 13',
        price: 249.90,
        description: '',
        quantity: 2, 
        wattage: 850,
        efficiency: '80+ Titanium',
        form: 'ATX',
    )

    Psu.find_or_create_by(
        name: 'Pure Power 12M',
        price: 134.90,
        description: '',
        quantity: 2,
        wattage: 850,
        efficiency: '80+ Gold',
        form: 'ATX',
    )
end