class Api::V1::MapsController < ApplicationController
  def index
    maps = Map.all
    render json: maps
  end

  def create
    map = Map.create(name: params[:name], user_id: params[:user_id])
    render json: map
  end

  def show
    map = Map.find(params[:id])
    render json: map
  end

  def destroy
    map = Map.find(params[:map_id])
    map.destroy()
  end
end
