class CampaignChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    campaign = Campaign.find(params[:campaign_id])
    stream_for campaign
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
