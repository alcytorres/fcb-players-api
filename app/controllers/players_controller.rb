class PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: {message: "Hello"}
  end



end
