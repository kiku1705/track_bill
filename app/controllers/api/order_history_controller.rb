class Api::OrderHistoryController < Api::BaseController

	def order_histories
		if params[:order_histories]
		    cnt = 0
		    params[:order_histories].try(:each) do |order_attr|
		    	order_history = OrderHistory.create(order_attr)
		    	cnt++ if order_history.persisted?
		    end
		    render json: { count: cnt }, status: 200
		else
			render json: { }, status: :unproccesable_entity
		end
	end

	def index
		user = User.includes(:items).find_by_device_id(params[:user][:device_id])
		@items = user.items
	end
end