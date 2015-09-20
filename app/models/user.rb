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
end