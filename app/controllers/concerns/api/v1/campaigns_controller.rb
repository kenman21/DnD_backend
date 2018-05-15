class Api::V1::CampaignsController < ApplicationController

  def index
    campaigns = Campaign.all
    render json: campaigns
  end

  def create
    campaign = Campaign.create(name: params[:name], creator_id: params[:creator_id])
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

end
