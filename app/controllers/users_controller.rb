class UsersController < ApplicationController
    before_action :authentication_required, only: [:show]

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        
        flash[:name_errors] = @user.errors[:name]
        flash[:password_errors] = @user.errors[:password]
        flash[:password_confirmation_errors] = @user.errors[:password_confirmation]

        return redirect_to '/signup' unless @user.save
        
        session[:user_id] = @user.id 
        
        flash[:notice] = "Congrats #{@user.name}! You created your account!"

        redirect_to "/users/#{@user.id}"
    end

    def show
        current_user
    end

    private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end