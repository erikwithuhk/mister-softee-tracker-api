class ApplicationController < ActionController::API
  # helper_method :current_user

  # def current_user
  #   current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

  # def require_user
  #   render json: { error: "You must be logged in to access" },
  #          status: :unauthorized unless current_user
  # end
end
