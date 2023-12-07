# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.find_or_create_by(email: 'bob@email.com') do |user|
    user.password = 'password'
end
  
user2 = User.find_or_create_by(email: 'alice@email.com') do |user|
    user.password = 'password'
end

ShippingAddress.create!(
  user: user1,
  full_name: "John Doe",
  address: "123 Main St",
  apartment: "",
  city: "New York",
  state: "NY",
  zipcode: "10001",
  phone_number: "555-123-4567",
  country: "USA"
)

ShippingAddress.create!(
  user: user2,
  full_name: "Alice Smith",
  address: "456 Market St",
  apartment: "Apt 3",
  city: "San Francisco",
  state: "CA",
  zipcode: "94102",
  phone_number: "555-987-6543",
  country: "USA"
)

case_image_filenames = ['Cooler Master NR200.jpeg', 'Meshilicious.jpeg', 'FormD T1 Sandwich kit.webp', 'Fractal Design Torrent Nano.jpeg', 'LIAN Li A4-H2O.jpeg', 'Louqe Raw S1 Mk1.jpeg', 'Jonsbo D31.jpeg', 'Lian Li Q58.jpeg']

Case.all.each_with_index do |cases, index|
  if case_image_filenames[index].present?
    cases.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', case_image_filenames[index])), filename: case_image_filenames[index])
  end
end

cooler_image_filenames = ['Noctua NH-D12L.jpeg', 'Noctua NH-L12S.jpeg', 'Scythe Big Shuriken 3.jpeg', 'ARTIC Liquid Freezer II 240mm.jpeg', 'Kraken Z63 RGB 280mm.jpeg', 'Lian Li Galahad AIO 240mm.jpeg']

Cooler.all.each_with_index do |cooler, index|
  if cooler_image_filenames[index].present?
    cooler.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', cooler_image_filenames[index])), filename: cooler_image_filenames[index])
  end
end

cpu_image_filenames = ['AMD Ryzen 7600x.jpeg', 'AMD Ryzen 7700x.jpeg', 'AMD Ryzen 7900x.webp', 'Intel 13600k.jpeg', 'Intel 13700k.jpeg', 'Intel 13900k.jpeg']

Cpu.all.each_with_index do |cpu, index|
  if cpu_image_filenames[index].present?
    cpu.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', cpu_image_filenames[index])), filename: cpu_image_filenames[index])
  end 
end

gpu_image_filenames = ['Radeon 7900xtx.jpeg', 'Radeon 7900xt.png', 'Radeon 6950xt.jpeg', 'Nvidia 4090.webp', 'Nvidia 4080.jpg', 'Nvidia 4070.jpeg']

Gpu.all.each_with_index do |gpu, index|
  if gpu_image_filenames[index].present?
    gpu.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', gpu_image_filenames[index])), filename: gpu_image_filenames[index])
  end
end

motherboard_image_filenames = ['ASUS X670E-I ROG Strix.png', 'MSI MPG B650I.png', 'gigabyte B650I aorus Ultra.png', 'ASUS ROG Strix Z970-I.jpg', 'Asrock Z790M-ITX .png', 'ASUS ROG Strix B760-I.jpeg']

Motherboard.all.each_with_index do |motherboard, index|
  if motherboard_image_filenames[index].present?
    motherboard.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', motherboard_image_filenames[index])), filename: motherboard_image_filenames[index])
  end
end

psu_image_filenames = ['Corsair SF750.jpg', 'Phanteks Revolt SFX 750w.jpg', 'Cooler Master V850.jpeg', 'ASUS ROG Loki SFX-L.png', 'Be Quiet! Power 13.jpg', 'Pure Power 12M.jpeg']

Psu.all.each_with_index do |psu, index|
  if psu_image_filenames[index].present?
    psu.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', psu_image_filenames[index])), filename: psu_image_filenames[index])
  end
end

ram_image_filenames = ['CORSAIR Vengence DDR5 32GB 5600mhz.jpeg', 'G.Skill Trident Z5 DDR5 32GB 6000mhz.jpg', 'Kingston FURY Technology DDR5 16GB 5200mhz.jpeg', 'TEAMGROUP T-Force Delta DDR5 32GB 5200mhz.jpg', 'CRUCIAL DDR5 16GB 4800mhz.jpg', 'Silicon Power DDR5 32GB 5600mhz.jpg']

Ram.all.each_with_index do |ram, index|
  if ram_image_filenames[index].present?
    ram.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', ram_image_filenames[index])), filename: ram_image_filenames[index])
  end
end

storage_image_filenames = ['Samsung 980 Pro SSD 2TB.webp', 'Western Digital 1TB WD Blue.jpeg', 'Crucial P3 500GB.jpg', 'TeamGroup T-Force Vulcan Z.jpeg', 'Samsung 870 EVO.jpeg', 'PNY CS900 250GB.jpeg']

Storage.all.each_with_index do |storage, index|
  if storage_image_filenames[index].present?
    storage.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', storage_image_filenames[index])), filename: storage_image_filenames[index])
  end
end

user2 = User.create!(
    email:      'alice@email.com',
    password:   'password'
)

Product.destroy_all
product1 = Product.create({:name=>"tomato", :price => 1})
product2 = Product.create({:name=>"milk", :price => 3})
product3 = Product.create({:name=>"bread", :price => 5.50})
product4 = Product.create({:name=>"bacon", :price => 10})
product5 = Product.create({:name=>"cheese", :price => 3.20})

puts "Total number of products: #{Product.all.count}"
puts "Product names: #{Product.all.pluck("name")}"
puts "Product1: #{product1.name} price: #{product1.price.round(2)}"
puts "Product2: #{product2.name} price: #{product2.price.round(2)}"
puts "Product3: #{product3.name} price: #{product3.price.round(2)}"
puts "Product4: #{product4.name} price: #{product4.price.round(2)}"
puts "Product5: #{product5.name} price: #{product5.price.round(2)}"

# CART
Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"

