class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = USer.new(user_params)
        if @user.save
            session[:user_id] = @user.user_id
            redirect_to root_path
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
    end

    private
    def user_params 
        params.require(:user).permit(:username, :password)
    end 
end