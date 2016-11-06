class Api::V1::CustomersController < Api::V1::UsersController
  def index
    customers = Customer.all.includes(:requests)
      render json: customers,
             only: [:id, :type, :position_lat, :position_lng],
             include: :requests,
             status: :ok
  end

  def show
    customer = Customer.includes(:requests).find(params[:id])
    if customer
      render json: customer, include: :requests, status: :ok
    else
      render json: { errors: '[Customer not found]' },
             status: :unprocessable_entity
    end
  end
end
