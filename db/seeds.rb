# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create!([{ name: 'Laptop',
	description: 'Electronic device',
	images: 'Not avilble',
	launch_date: Date.today,
	price: 77000.00,
	currency: 'INR',
	active: true },
	{ name: 'Mobile',
	description: 'Electronic device',
	images: 'Not avilble',
	launch_date: Date.today,
	price: 44000.00,
	currency: 'INR',
	active: true }])

User.create!([{name: 'Justin',
	email: 'Justin@gmail.com',
	address: 'California',
	country: 'USA',
	timezone: 'America/Los_Angeles',
	password: '123456'},
	{name: 'Mike',
	email: 'Mike.s@gmail.com',
	address: 'brewenski',
	country: 'Canada',
	timezone: 'Canada/Central',
	password: '123456'},
	{name: 'Jhon',
	email: 'Jhon@gmail.com',
	address: 'Catter',
	country: 'Africa',
	timezone: 'Africa/Cairo',
	password: '123456'},
	{name: 'Subhash',
	email: 'subhash@gmail.com',
	address: 'Delhi',
	country: 'India',
	timezone: 'Asia/Kolkata',
	password: '123456'},
	{name: 'Hashmi',
	email: 'Hashmi@gmail.com',
	address: 'azar',
	country: 'Singapore',
	timezone: 'Asia/Singapore',
	password: '123456'}])
