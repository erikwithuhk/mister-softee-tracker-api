class Api::V1::CustomersController < Api::V1::UsersController
  def index
    customers = Customer.all
    render json: customers, only: [:id, :type, :position_lat, :position_lng], status: :ok
  end

  def show
    customer = Customer.find(params[:id])
    if customer
      render json: customer, status: :ok
    else
      render json: { errors: '[Customer not found]' },
             status: :unprocessable_entity
    end
  end
end
