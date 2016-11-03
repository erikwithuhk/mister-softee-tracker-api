class Api::V1::UsersController < Api::V1::AuthController
  skip_before_action :authenticateRequest!, only: [:create]
  before_action :find_user, only: [:show, :update, :destroy]

  def index
    users = User.all
    render json: users, status: :ok
  end

  def show
    if @user
      render json: @user, status: :ok
    else
      render json: { errors: @user.errors }, status: unprocessable_entity
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      authenticate
    else
      render json: { errors: user.errors },
             status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: { errors: @user.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :type,
      :position_lat,
      :position_lng
    )
  end

  def find_user
    @user = User.find_by_id(params[:id])
  end
end
