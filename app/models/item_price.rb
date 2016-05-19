class ItemPrice < ActiveRecord::Base
	attr_accessible :item_id,:price,:organisation_id

	belongs_to :item
	belongs_to :organisation
end