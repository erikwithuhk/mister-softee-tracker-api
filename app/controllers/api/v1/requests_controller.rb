class Api::V1::RequestsController < ApplicationController
  before_action :get_request, only: [:show, :update, :destroy]

  def index
    requests = Request.all
    render json: requests, status: :ok
  end

  def show
    render json: @request, status: :ok
  end

  def create
    request = Request.new(request_params)
    if request.save
      render json: request, status: :ok
    else
      render json: request.errors, status: :unprocessable_entity
    end
  end

  def update
    if @request.update(request_params)
      render json: @request, status: :ok
    else
      render json: { errors: @request.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @request.destroy
  end

  private

  def get_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request)
          .permit(:customer_id, :vendor_id, :status, :isExpired)
  end
end
