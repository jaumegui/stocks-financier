# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy The Database"

Supplier.all.destroy_all
Product.all.destroy_all

puts "Done.............."

puts "Generating Supplier & Products.........."

Supplier.create(
	name: "Tafanel",
	email: "commandes@tafanel.net",
	phone: "+33144652424"
	)

Supplier.create(
	name:"Pernod Ricard",
	email:"ricardo.massarao@pernod-ricard.com",
	phone: "+33620788581"
	)

puts 'Done......'