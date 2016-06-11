class Api::OrdersController < Api::BaseController

	# def orders
	# 	if params[:orders]
	#     cnt = 0
	#     params[:orders].try(:each) do |order_attr|
	#     	order = Order.create(order_attr)
	#     	cnt += 1 if order.persisted?
	#     end
	#     render json: { count: cnt }, status: 200
	# 	else
	# 		render json: { }, status: :unproccesable_entity
	# 	end
	# end

	def index
		user = User.find_by_device_id(params[:user][:device_id])
		@items = user.orders
	end
end