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

  def create
    @player = Player.create(
      name: params[:name],
      position: params[:position],
      nationality: params[:nationality],
      dob: params[:dob],
    )
    render json: {message: "Yello"}
  end

  def destroy
    @player = Player.find_by(id: params[:id])
    @player.destroy
    render json: { message: "Player destroyed successfully" }
  end


end
