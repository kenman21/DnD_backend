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

  def update
    map = Map.find(params[:map_id])
    params[:actions].values.each do |tile_actions|
      tile_actions.each do |action|
        if action.keys.include?("draw")
          tile = Tile.find_by(x: action[:draw][0], y: action[:draw][1])
          slot = Slot.create(tile_id: tile.id, map_id: map.id, canvasx: action[:draw][2], canvasy: action[:draw][3])
        else
          slot = Slot.create(map_id: map.id, canvasx: action[:erase][2], canvasy: action[:erase][3])
        end
      end
    end
  end
end
