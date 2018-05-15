class Api::V1::TilesController < ApplicationController

  def index
    tiles = Tile.all
    render json: tiles
  end

end
