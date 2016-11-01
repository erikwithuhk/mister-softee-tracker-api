class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      # session[:user_id] = user.id
      render json: session, status: :ok
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
