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

end
