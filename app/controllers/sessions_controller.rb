class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        user = User.find_by(id: params[:user][:name])
        user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to 'welcome#index'
    end
    
    private
    def session_params
        params.require(:user).permit(:name, :password)
    end
end