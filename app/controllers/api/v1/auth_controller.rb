require './lib/auth_token'

class Api::V1::AuthController < ApplicationController
  skip_before_action :authenticateRequest!, only: [:authenticate]

  def authenticate
    user = User.find_by_credentials(user_params)
    if user
      render json: authentication_payload(user)
    else
      render json: { errors: ['Invalid email or password'] },
             status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

  def authentication_payload(user)
    return nil unless user && user.id
    {
      auth_token: AuthToken.encode({
        user_id: user.id,
        email: user.email,
        type: user.type,
        position: {
          lat: user.position_lat,
          lng: user.position_lng,
        }
      }),
      user: {
        id: user.id,
      }
    }
  end
end
