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

  def maps
    user = User.find(params[:user_id])
    render json: prepare_usermaps(user)
  end

  private

  def prepare_usermaps(user)
    maps_array = []
    user.maps.each do |map|
      map_hash = {}
      map_hash = {id: map.id, name: map.name}
      map_hash[:slots] = map.slots.map {|slot| prepare_slot(slot)}
      maps_array.push(map_hash)
    end
    maps_array
  end

  def prepare_slot(slot)
    slot_hash = {
      id: slot.id,
      tile_x: slot.tile.x,
      tile_y: slot.tile.y,
      canvas_x: slot.canvasx,
      canvas_y: slot.canvasy
    }
  end

end
