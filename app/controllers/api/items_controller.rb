class Api::ItemsController < Api::BaseController
	def index
		@items = Item.all
	end
end