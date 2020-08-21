class HomeController < ApplicationController
  def index
    render json: { message: "I am Running" }, status: 200
  end
end
