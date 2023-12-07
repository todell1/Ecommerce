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
class Storage < ApplicationRecord
    has_one_attached :image
    default_scope { order(created_at: :asc) }

    Storage.find_or_create_by(
        name: 'Samsung 980 Pro SSD 2TB',
        price: 149.99,
        description: '',
        quantity: 2,
        storage_type: 'PCIe NVMe M.2',
        gen: 'Gen 4',
        storage_size: '2TB',
        speed: 7000,
    )

    Storage.find_or_create_by(
        name: 'Western Digital 1TB WD Blue',
        price: 52.99,
        description: '',
        quantity: 2,
        storage_type: 'PCIEe NVMe M.2',
        gen: 'Gen 3',
        storage_size: '1TB',
        speed: 3500,
    )

    Storage.find_or_create_by(
        name: 'Crucial P3 500GB',
        price: 31.99,
        description: '',
        quantity: 2,
        storage_type: 'PCIEe NVMe M.2',
        gen: 'Gen 3',
        storage_size: '500GB',
        speed: 3500,
    )

    Storage.find_or_create_by(
        name: 'TeamGroup T-Force Vulcan Z',
        price: 82.99,
        description: '',
        quantity: 2,
        storage_type: 'SATA III SSD',
        gen: 'N/A',
        storage_size: '2TB',
        speed: 550,
    )

    Storage.find_or_create_by(
        name: 'Samsung 870 EVO',
        price: 119.99,
        description: '',
        quantity: 2,
        storage_type: 'SATA III SSD',
        gen: 'N/A',
        storage_size: '2TB',
        speed: 560,
    )

    Storage.find_or_create_by(
        name: 'PNY CS900 250GB',
        price: 15.99,
        description: '',
        quantity: 2,
        storage_type: 'SATA III SSD',
        gen: 'N/A',
        storage_size: '250GB',
        speed: 535,
    )
end