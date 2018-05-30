class Api::V1::MessagesController < ApplicationController

  def create
    user = User.find(params[:user_id])
    character = Character.where(user_id: params[:user_id], campaign_id: params[:campaign_id])
    campaign = Campaign.find(params[:campaign_id])
    chatroom = Chatroom.find(params[:chatroom_id])
    if character.length == 1
      message = Message.create(character_name: character.first.name, name: User.find(params[:user_id])[:name], user_id: params[:user_id], chatroom_id: params[:chatroom_id], content: params[:message])
    else
      message = Message.create(character_name: "DM", name: User.find(params[:user_id])[:name], user_id: params[:user_id], chatroom_id: params[:chatroom_id], content: params[:message])
    end
    CampaignChannel.broadcast_to(campaign, {
      type: 'ADD_MESSAGE',
      payload: {messages: chatroom.messages}
      })
  end


end
