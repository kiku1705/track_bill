collection @items
	attributes :id, :item_id, :price

	node(:name) { |obj| obj.item.name}