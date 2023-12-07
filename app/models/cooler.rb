# == Schema Information
#
# Table name: coolers
#
#  id          :bigint           not null, primary key
#  description :text
#  height      :decimal(, )
#  name        :string
#  price       :decimal(, )
#  quantity    :integer
#  socket      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cooler < ApplicationRecord
    has_one_attached :image
    default_scope { order(created_at: :asc) }

    Cooler.find_or_create_by(
        name: 'Noctua NH-D12L',
        price: 89.95,
        description: 'Low-height (145mm) dual-tower heatsink combines outstanding quiet cooling performance with excellent case compatibility, fits most 4U rackmount server cases.',
        quantity: 2,
        socket: 'LGA1700/AM5',
        height: 145,
    )

    Cooler.find_or_create_by(
        name: 'Noctua NH-L12S',
        price: 59.95,
        description: 'Successor to the popular NH-L12, the NH-L12S is a compact low-profile CPU cooler that combines excellent compatibility, surprising efficiency and remarkable flexibility. Thanks to its NF-A12x15 PWM, slim 120mm fan, the NH-L12S provides even better quiet cooling performance than the previous model with its 92mm fan. At the same time, the NH-L12S is highly versatile: with the fan installed on top of the fins, the cooler is compatible with RAM modules of up to 48mm in height. With the fan installed underneath the fins, the total height of the cooler is only 70mm, making it suitable for use in many HTPC and Small Form Factor cases. Topped off with the trusted, pro-grade SecuFirm2 multi-socket mounting system and Noctua’s proven NT-H1 thermal compound, the NH-L12S is a premium-quality low-profile solution for the highest demands.',
        quantity: 2,
        socket: 'LGA1700/AM5',
        height: 48,
    )

    Cooler.find_or_create_by(
        name: 'Scythe Big Shuriken 3',
        price: 49.99,
        description: '67mm tall perfectly fits Small Form Factor PC ( SFF, Mini ITX, HTPC Case), BS3 Rev.B is now 2mm shorter than its predecessor(SCBSK-3000: 69mm tall). Asymmetric and offset design for excellent compatibility with Mini ITX, Micro ATX motherboards and high-end RAM. Premium model for Intel Core i9, i7, i5, i3 and AMD Ryzen.',
        quantity: 2,
        socket: 'LGA1700/AM5',
        height: 67,
    )

    Cooler.find_or_create_by(
        name: 'ARTIC Liquid Freezer II 240 mm',
        price: 99.00,
        description: 'The Liquid Freezer II series consistently exceeds all expectations and sets new standards in compact water cooling. As a further mark of recognition, the Liquid Freezer II series was awarded the “European Hardware Award 2022” for the best CPU water cooler.',
        quantity: 2,
        socket: 'LGA1700/AM5',
        height: 53,
    )

    Cooler.find_or_create_by(
        name: 'Kraken Z63 RGB 280mm',
        price: 274.99,
        description: 'This All-in-One (AIO) liquid cooler is ready for high performance CPUs with the ability to fit in most cases. Show CPU/GPU temperatures or customize with GIFs with the Kraken Z LCD display.',
        quantity: 2,
        socket: 'LGA1700/AM5',
        height: 52,
    )

    Cooler.find_or_create_by(
        name: 'Lian Li Galahad AIO 240mm',
        price: 229.99,
        description: 'An outstanding All-In-One CPU cooler. Primarily intended to enhance your system’s performanceAvailable in two size two color, 240mm and 360mm, black and white. Supplies with ARGB high static pressure fan with a variable speed of 800 to 1900 RPM, can operate in PWM or DC mode, and have a rated airflow of 69.17 CFM.Mounting with a finish look.',
        quantity: 2,
        socket: 'LGA1700/AM5',
        height: 62,
    )
end