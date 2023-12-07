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
class Gpu < ApplicationRecord
    has_one_attached :image
    default_scope { order(created_at: :asc) }

    Gpu.find_or_create_by(
        name: 'Radeon 7900xtx',
        price: 999.00,
        description: '4K & beyond gaming with AMD RDNA™ 3 compute units featuring Raytracing & AI Acceleration! Breakthrough new levels of performance with up to 24GB of GDDR6 memory & clock speeds! Boost in Frames. High Performance Gaming. Incredible Experience.',
        quantity: 2,
        length: 287,
        slots: 2.5,
    )

    Gpu.find_or_create_by(
        name: 'Radeon 7900xt',
        price: 849.00,
        description: 'Breakthrough new levels of performance with up to 24GB of GDDR6 memory and blazing fast clock speeds to deliver an incredible experience at 4K and beyond. Radeon™ RX 7900 Series graphics feature advanced AMD RDNA™ 3 compute units, with 2nd generation raytracing accelerators and new AI accelerators to deliver incredible performance while maximizing graphical fidelity.',
        quantity: 2,
        length: 276,
        slots: 2.5,
    )

    Gpu.find_or_create_by(
        name: 'Radeon 6950xt',
        price: 699.00,
        description: 'The Radeon RX 6950 XT is an enthusiast-class graphics card by AMD, launched on May 10th, 2022. Built on the 7 nm process, and based on the Navi 21 graphics processor, in its Navi 21 KXTX variant, the card supports DirectX 12 Ultimate. This ensures that all modern games will run on Radeon RX 6950 XT. Additionally, the DirectX 12 Ultimate capability guarantees support for hardware-raytracing, variable-rate shading and more, in upcoming video games. The Navi 21 graphics processor is a large chip with a die area of 520 mm² and 26,800 million transistors. It features 5120 shading units, 320 texture mapping units, and 128 ROPs. The card also has 80 raytracing acceleration cores. AMD has paired 16 GB GDDR6 memory with the Radeon RX 6950 XT, which are connected using a 256-bit memory interface. The GPU is operating at a frequency of 1860 MHz, which can be boosted up to 2310 MHz, memory is running at 2250 MHz.',
        quantity: 2,
        length: 267,
        slots: 2.5,
    )

    Gpu.find_or_create_by(
        name: 'Nvidia 4090',
        price: 1599.99,
        description: 'The NVIDIA GeForce RTX 4090 is the ultimate GeForce GPU. It brings an enormous leap in performance, efficiency, and AI-powered graphics. Experience ultra-high performance gaming, incredibly detailed virtual worlds with ray tracing, unprecedented productivity, and new ways to create. It’s powered by the NVIDIA Ada Lovelace architecture and comes with 24 GB of G6X memory to deliver the ultimate experience for gamers and creators.',
        quantity: 1,
        length: 304,
        slots: 3,
    )

    Gpu.find_or_create_by(
        name: 'Nvidia 4080',
        price: 1199.99,
        description: '',
        quantity: 2,
        length: 304,
        slots: 3,
    )

    Gpu.find_or_create_by(
        name: 'Nvidia 4070',
        price: 599.99,
        description: '',
        quantity: 3,
        length: 305,
        slots: 2,
    )
end