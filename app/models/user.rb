class User < ActiveRecord::Base
	attr_accessible \
		:email,
		:first_name,
		:image,
		:last_name

	mount_uploader :image, ImageUploader
	
	def name
		first_name.strip + " " + last_name.strip
	end

	belongs_to :organisation

	has_many :orders
end