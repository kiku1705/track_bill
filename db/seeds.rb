organisation = Organisation.create(name: 'Metacube')

items = [
	{ name: 'Chai', price: 7 },
	{ name: 'Kachori', price: 15 },
	{ name: 'Fried Idli', price: 25 },
	{ name: 'Chips', price: 10 },
	{ name: 'Samosa', price: 10 },
	{ name: 'Bread Bada', price: 10 },
	{ name: 'Bread Pakoda', price: 20 },
	{ name: 'Mirchi Bada', price: 10 }
]

items.each do |item|
	price = item.delete(:price)
	exist_item = Item.find_by(name:item[:name])
	exist_item = Item.create(item) if exist_item.blank?
	ItemPrice.create(item_id: exist_item.id, price: price, organisation_id: organisation.id)
end
