class Api::V1::VendorsController < Api::V1::UsersController
  skip_before_action :authenticateRequest!

  def index
    vendors = Vendor.all.includes(:requests)
    render json: vendors,
           only: [:id, :type, :position_lat, :position_lng],
           include: :requests,
           status: :ok
  end

  def show
    vendor = Vendor.includes(:requests).find(params[:id])
    if vendor
      render json: vendor, include: :requests, status: :ok
    else
      render json: { errors: '[Vendor not found]' },
             status: :unprocessable_entity
    end
  end
end
