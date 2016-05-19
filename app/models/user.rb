class User < ActiveRecord::Base
	attr_accessible \
		:first_name,
		:last_name,
		:email,
		:image

	mount_uploader :image, ImageUploader
	
	def name
		first_name.strip + " " + last_name.strip
	end

	belongs_to :organisation

	has_many :order_histories
	has_many :orders, through: :order_histories, source: :item_price
end