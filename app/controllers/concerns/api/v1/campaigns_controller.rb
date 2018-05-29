class Api::V1::CampaignsController < ApplicationController

  def index
    campaigns = Campaign.all
    render json: campaigns
  end

  def create
    campaign = Campaign.create(name: params[:name], creator_id: params[:creator_id],  password: params[:password].strip)
    render json: campaign
  end

  def show
    campaign = Campaign.find(params[:id])
    render json: campaign
  end

  def destroy
    campaign = Campaign.find(params[:campaign_id])
    campaign.destroy()
  end

  def characters
    campaign = Campaign.find(params[:campaign_id])
    render json: campaign.characters
  end

  def password
    campaign = Campaign.find(params[:campaign_id])
    if campaign && campaign.authenticate(params[:password].strip)
      render json: campaign
    else
      render json: {errors: "There was an error"}
    end
  end

  def session
    session = Session.where(campaign_id: params[:campaign_id])
    if session != nil
      map = Map.find(session[-1][:open_map_id])
      render json: {activeSession: session, map: prepare_map(map)}
    else
      render json: {errors: "No Active Session"}
    end
  end

  private

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
