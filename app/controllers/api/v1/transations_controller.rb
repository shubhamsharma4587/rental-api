class Api::V1::TransationsController < ApplicationController
  before_action :set_transation, only: [:show, :update, :destroy]

  # GET /transations
  def index
    @transations = Transation.all

    render json: @transations
  end

  # GET /transations/1
  def show
    render json: @transation
  end

  # POST /transations
  def create
    @transation = Transation.new(transation_params)

    if @transation.save
      render json: @transation, status: :created
    else
      render json: @transation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transations/1
  def update
    if @transation.update(transation_params)
      render json: @transation
    else
      render json: @transation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transations/1
  def destroy
    @transation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transation
      @transation = Transation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def transation_params
      params.require(:transation).permit(:transation_id, :transation_date_time, :customer_id, :product_id, :transation_type, :quantity, :transation_id_parent)
    end
end
