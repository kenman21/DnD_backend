class Api::V1::MessagesController < ApplicationController

  def create
    message = Message.create(name: User.find(params[:user_id])[:name], user_id: params[:user_id], chatroom_id: params[:chatroom_id], content: params[:message])
    user = User.find(params[:user_id])
    campaign = Campaign.find(params[:campaign_id])
    chatroom = Chatroom.find(params[:chatroom_id])
    CampaignChannel.broadcast_to(campaign, {
      type: 'ADD_MESSAGE',
      payload: {messages: chatroom.messages}
      })
  end


end
