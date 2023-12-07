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
class Cpu < ApplicationRecord
    has_one_attached :image
    default_scope { order(created_at: :asc) }

    Cpu.find_or_create_by(
        name: 'AMD Ryzen 7600x',
        price: 249.00,
        description: 'Featuring 6 cores, 12 threads, boost clocks of up to 5.3GHz & 32MB of L3 cache. See More! AMD Ryzen™ 5 7600X Processor ushers in the speed of “Zen 4” for gamers & creators. Ultra-Fast Gaming. Leadership Performance. Supercharged Performance.',
        quantity: 2,
        tdp: 'TDP 105W',
        socket: 'AM5',
    )

    Cpu.find_or_create_by(
        name: 'AMD Ryzen 7700x',
        price: 349.00,
        description: 'Featuring 8 cores, 16 threads, boost clocks of up to 5.4GHz & 32MB of L3 cache. See More! With AMD EXPO™ memory overclocking technology & AM5 CPU socket support. Explore Now! Leadership Performance. New Era of Performance. Superior Performance.',
        quantity: 2,
        tdp: 'TDP 105W',
        socket: 'AM5',
    )

    Cpu.find_or_create_by(
        name: 'AMD Ryzen 7900x',
        price: 449.00,
        description: 'Featuring 12 cores, 24 threads, boost clocks of up to 5.6GHz & 64MB of L3 cache. See More! Get the competitive edge with the ultimate enthusiast processor for gamers & creators! Performance Leadership. Supercharged Performance. Higher Resolutions.',
        quantity: 2,
        tdp: 'TDP 170W',
        socket: 'AM5,'
    )

    Cpu.find_or_create_by(
        name: 'Intel 13600k',
        price: 319.80,
        description: '14 cores (6 P-cores + 8 E-cores) and 20 threads. Integrated Intel UHD Graphics 770 included
        Performance hybrid architecture integrates two core microarchitectures, prioritizing and distributing workloads to optimize performance
        Up to 5.1 GHz unlocked. 24M Cache
        Compatible with Intel 600 series and 700 series chipset-based motherboards
        Turbo Boost Max Technology 3.0, and PCIe 5.0 & 4.0 support. Intel Optane Memory support. No thermal solution include.',
        quantity: 2,
        tdp: 'TDP 125W',
        socket: 'LGA 1700',
    )

    Cpu.find_or_create_by(
        name: 'Intel 13700k',
        price: 415.88,
        description: '16 cores (8 P-cores + 8 E-cores) and 24 threads. Integrated Intel UHD Graphics 770 included
        Performance hybrid architecture integrates two core microarchitectures, prioritizing and distributing workloads to optimize performance
        Up to 5.4 GHz unlocked. 30M Cache
        Compatible with Intel 600 series and 700 series chipset-based motherboards
        Turbo Boost Max Technology 3.0, and PCIe 5.0 & 4.0 support. Intel Optane Memory support. No thermal solution included.',
        quantity: 2,
        tdp: 'TDP 125W',
        socket: 'LGA 1700',
    )

    Cpu.find_or_create_by(
        name: 'Intel 13900k',
        price: 569.99,
        description: '24 cores (8 P-cores + 16 E-cores) and 32 threads. Integrated Intel UHD Graphics 770 included
        Performance hybrid architecture integrates two core microarchitectures, prioritizing and distributing workloads to optimize performance
        Up to 5.8 GHz unlocked. 36M Cache
        Compatible with Intel 600 series and 700 series chipset-based motherboards
        Turbo Boost Max Technology 3.0, and PCIe 5.0 & 4.0 support. Intel Optane Memory support. No thermal solution included.',
        quantity: 2,
        tdp: 'TDP 125W',
        socket: 'LGA 1700',
    )

end