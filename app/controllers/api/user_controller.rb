class Api::UserController < Api::BaseController
	def create
		@user = User.new(params[:user])
		if @user.valid?
			@user.device_id = params[:devise_id]
			@user.save
			render json: { }, status: 200
		else
			render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
		end
	end

	def show
		@user = User.find_by_id(params[:id])
	end
end