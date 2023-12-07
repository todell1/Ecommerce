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
class Case < ApplicationRecord
    has_one_attached :image
    default_scope { order(created_at: :asc) }

    Case.find_or_create_by(
        name: 'Cooler Master NR200',
        price: 124.34,
        description: 'Easy, Tool-free access: All external panels, including the tempered glass and top-mounted fans, are secured with pins for easy removal, facilitating quick access to the internals without the use of tools.',
        quantity: 2,
        gpu_clearance: 330,
        gpu_slots: 3,
        air_cooler_clearance: 155,
        liquid_cooler_clearance: 280,
    )

    Case.find_or_create_by(
        name: 'Meshilicous',
        price: 189.00,
        description: 'Meshlicious is a combination of MESH and Delicious. There’s so much mesh that your mouth will water. Breathable, mesh panels lets you savor the airflow and minty temps.',
        quantity: 1,
        gpu_clearance: 342,
        gpu_slots: 4,
        air_cooler_clearance: 73,
        liquid_cooler_clearance: 280,
    )

    Case.find_or_create_by(
        name: 'FormD T1 Sandwich Kit',
        price: 265.00,
        description: 'This configuration allows for better graphics card compatibility, more build possibilities, and creativity with builds.
    Unlocking the full potential of this configuration makes it ideal for tinkers and power users interested in pushing the limits.',
        quantity: 3,
        gpu_clearance: 325,
        gpu_slots: 3.25,
        air_cooler_clearance: 48,
        liquid_cooler_clearance: 240,
    )

    Case.find_or_create_by(
        name: 'Fractal Design Torrent Nano',
        price: 129.99,
        description: 'The Torrent Nano is built to maximize cooling potential straight out of the box. Main standouts include an unobstructed base intake, an open front grille and one of our 180 x 38 mm Dynamic PWM fans (Prisma for RGB version) custom-made to achieve maximum air cooling while maintaining controlled noise levels.',
        quantity: 2,
        gpu_clearance: 335,
        gpu_slots: 3,
        air_cooler_clearance: 165,
        liquid_cooler_clearance: 240,
    )

    Case.find_or_create_by(
        name: 'LIAN Li A4-H2O',
        price: 154.99,
        description: 'The A4-H2O is an 11-liter small form factor case, a collaboration project with DAN Cases. Based on the origianl DAN A4-SFX case sandwich layout concept, the A4-H2O continues the minimalist and compact form factor with improved hardware compatibality (including A10 water cooling) and simplifies installation.',
        quantity: 2,
        gpu_clearance: 322,
        gpu_slots: 3,
        air_cooler_clearance: 55,
        liquid_cooler_clearance: 240,
    )

    Case.find_or_create_by(
        name: 'Loque Raw S1 Mk1',
        price: 159.00,
        description: 'Built for the battle, built for the road, built with you in mind: The Raw S1 gives unparalleled accessibility in a PC build with its 360 degree component access, tool-free GPU installation, and built-in handle. From start to finish you will be up in no time.',
        quantity: 2,
        gpu_clearance: 320,
        gpu_slots: 3,
        air_cooler_clearance: 75,
        liquid_cooler_clearance: 0,
    )

    Case.find_or_create_by(
        name: 'Jonsbo D31',
        price: 144.99,
        description: 'The 4-level height adjustment of the power supply position is added,Whether it is to set up a personal small workstation or a feverish E-sports PC, D31 can easily select the hardware.',
        quantity: 2,
        gpu_clearance: 400,
        gpu_slots: 4,
        air_cooler_clearance: 168,
        liquid_cooler_clearance: 360,
    )

    Case.find_or_create_by(
        name: 'Lian Li Q58',
        price: 149.99,
        description: 'Features swappable hinged glass and mesh panels
        Included PCIe 3.0 or PCIe 4.0 riser cable for vertically mounted GPU
        Supports SFX PSU and up to 160mm long ATX PSU
        Supports up to 325mm long radiator in certain circumstances
        Supports 4 storage drive mounting locations
        Cable management friendly with tie points and included LED/ fan hub',
        quantity: 2,
        gpu_clearance: 320,
        gpu_slots: 3,
        air_cooler_clearance: 67,
        liquid_cooler_clearance: 280,
    )
end