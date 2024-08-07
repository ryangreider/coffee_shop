class SessionsController < ApplicationController
    def create 
        @user = User.find_by_id(username: params[:username])

        #authenticate user credentials
        if !!@user && @user.authenticate(params[:password])
            #set session
            session[user_id] = @user.id
            redirect_to user_path

        else
            #error message when fails
            message = "Something went wrong! Make sure your username and password are correct."
            redirect_to login_path, notice: message
        end 
    end 
        
end