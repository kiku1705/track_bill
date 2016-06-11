class ItemPrice < ActiveRecord::Base
	attr_accessible \
		:item_id,
		:organisation_id,
		:price

	belongs_to :item
	belongs_to :organisation
end