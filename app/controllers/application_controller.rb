class ApplicationController < ActionController::Base

    private
    def current_user 
        if session[:user_id]
            @user ||= User.find(session[:user_id])
        end
    end

    def logged_in?
        current_user ? true : false
    end

    def authentication_required
        if !logged_in?
            redirect_to '/login'
        end
    end
end
