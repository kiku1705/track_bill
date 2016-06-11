class Api::ItemPricesController < Api::BaseController
	def index
		if params[:organisation_id].present?
			@items = ItemPrice.includes(:item).where(organisation_id:params[:organisation_id])
		else
			@items = []
		end
	end
end