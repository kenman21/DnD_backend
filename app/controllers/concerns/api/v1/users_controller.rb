class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(name: params[:username].strip, password: params[:password].strip)
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def login
    user = User.find_by(name: params[:username].strip)
    if user && user.authenticate(params[:password].strip)
      render json: user
    else
      render json: {errors: "There was an error"}
    end
  end

end
