class Api::V1::AuthController < ApplicationController

  def login
    user = User.where("email = ? AND password = ?", params[:user][:email].downcase, params[:user][:password])
    if user.present?
      render :json => user[0], status: 200
    else
      render :json => {error: "Invalid Email or password."}, status: 401
    end
  end

  def get_user
    user = User.find_by(user_id: params[:user_id])
    if user.present?
      render :json => user, status: 200
    else
      render :json => {error: "User not found"}, status: 400
    end
  end

end
