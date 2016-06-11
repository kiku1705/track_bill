collection @items
	attributes :id,:item_id,:price
	node(:item_name) { |obj| obj.item.item_name}