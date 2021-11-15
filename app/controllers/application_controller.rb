class ApplicationController < ActionController::API
    protect_from_forgery with: :null_session

    def logged_in?
        !!current_user
    end

    def current_user
        @current_user ||= User.find(sessions[:user_id]) if session[:user_id]
    end
end
