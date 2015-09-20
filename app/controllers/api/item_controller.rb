class Api::ItemController < Api::BaseController
	def index
		@items = Item.all
	end
end