# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

items = [{item_name:'Chai',price:7},
		{item_name:'Kachori',price:15},
		{item_name:'Fried Idli',price:25},
		{item_name:'Chips',price:10},
		{item_name:'Samosa',price:10},
		{item_name:'Bread Bada',price:10},
		{item_name:'Bread Pakoda',price:20},
		{item_name:'Mirchi Bada',price:10}
	]
	items.each do |item|
		exist_item = Item.find_by(item_name:item[:item_name])
		Item.create(item) if exist_item.blank?
	end
