class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      session[:email] = user.email
      render json: session, status: :ok
    else
      render json: session, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    render status: :no_content
  end
end
