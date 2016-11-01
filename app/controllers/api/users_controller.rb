class Api::UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    users = User.all
    render json: users, status: :ok
  end

  def show
    render json: @user, status: :ok
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :ok
    else
      render json: { errors: user.errors },
             status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

  def find_user
    @user = User.find_by_id(params[:id])
  end
end
