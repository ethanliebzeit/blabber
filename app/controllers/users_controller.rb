class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save!
			session[:user_id] = @user.id
			redirect_to blabs_path, notice: "prepare to blab!"
		else
			render "new"
		end
	end

	def show
		@user = current_user
		@blabs = @user.blabs
	end

end