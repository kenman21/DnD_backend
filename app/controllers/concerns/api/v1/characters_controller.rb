class Api::V1::CharactersController < ApplicationController

  def index
    characters = Character.all
    render json: characters
  end

  def create
    character = Character.create(name: params[:name], user_id: params[:user_id], campaign_id: params[:campaign_id])
    render json: character
  end

  def show
    character = Character.find(params[:id])
    render json: character
  end

  def update
    character = Character.find(params[:character_id])
    params[:charsheet].each do |k,v|
      character.send("#{k}=",v)
    end
    character.save
    render json: character
  end

end
