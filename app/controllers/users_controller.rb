class UsersController < ApplicationController
def new
end
def new
	@user = User.new
end

def create
	@user = User.new user_params
	if @user.save
		flash[:success] ="Register sucess"
		redirect_to users_path
	else
		flash[:success] ="Register failed"
		render :new
	end
end

private
def user_params
	params.require(:user).permit :name, :password, :password_confirmation
end

def show
	@user = User.new
	@user.id = '1'
    #@user = User.find_by id: params[:id]
end

def index
	authorize @users
	@users = User.all
end

end
