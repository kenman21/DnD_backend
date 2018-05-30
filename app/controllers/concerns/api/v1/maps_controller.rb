class Api::V1::MapsController < ApplicationController
  def index
    maps = Map.all
    render json: maps
  end

  def create
    map = Map.create(name: params[:name], user_id: params[:user_id])
    user = User.find(params[:user_id])
    render json: prepare_usermaps(user)
  end

  def show
    map = Map.find(params[:id])
    render json: map
  end

  def destroy
    user = User.find(params[:user_id])
    map = Map.find(params[:map_id])
    map.destroy()
    render json: prepare_usermaps(user)
  end

  def update
    map = Map.find(params[:map_id])
    params[:actions].values.each do |tile_actions|
      tile_actions.each do |action|
        if action.keys.include?("draw")
          tile = Tile.find_by(x: action[:draw][0], y: action[:draw][1])
          slot = Slot.create(tile_id: tile.id, map_id: map.id, canvasx: action[:draw][2], canvasy: action[:draw][3], sheet: action[:draw][4])
          Slot.where(canvasx: action[:draw][2], canvasy: action[:draw][3]).order(:id).reverse[2..-1].each do |slot|
            slot.destroy()
          end
        else
          slot = Slot.create(map_id: map.id, canvasx: action[:erase][2], canvasy: action[:erase][3])
        end
      end
    end
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
      canvas_y: slot.canvasy,
      sheet: slot.sheet
    }
  end

end
