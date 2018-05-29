class Api::V1::SessionsController < ApplicationController

  def create
    session = Session.create(campaign_id: params[:campaign_id])
    render json: session
  end

  def update
    session = Session.find(params[:session_id])
    if params[:type] == "setting"
      session[:open_map_id] = params[:open_map_id]
      session.save
      map = Map.find(params[:open_map_id])
      render json: prepare_map(map)
    elsif params[:type] == "highlighting"
      session[:start_x] = params[:start_x]
      session[:start_y] = params[:start_y]
      session[:end_x] = params[:end_x]
      session[:end_y] = params[:end_y]
      byebug
      session.save
      render json: session
    end
  end

  def prepare_map(map)
    map_hash = {}
    map_hash = {id: map.id, name: map.name}
    map_hash[:slots] = map.slots.map {|slot| prepare_slot(slot)}
    map_hash
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
