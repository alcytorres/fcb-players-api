class PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: {message: "Hello"}
  end

  def show
    @players = Player.find_by(id: params[:id])
    render json: {message: "Jello"}
  end

  

  def update
    @player = Player.find_by(id: params[:id])
    @player.update(
      name: params[:name] || @player.name,
      position: params[:position] || @player.position,
      nationality: params[:nationality] || @player.nationality,
      dob: params[:dob] || @player.dob,
    )
    render json: {message: "Zello"}
  end


end
