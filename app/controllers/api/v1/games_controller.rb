class Api::V1::GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games
  end


  def show
    @game = Game.find(params[:id])
    rend json: @game, status: :ok
  end


end
