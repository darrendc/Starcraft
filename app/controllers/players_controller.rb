# frozen_string_literal: true

class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def index
    @players = Player.all
  end

  def show
    @player = Player.find_by_id(params[:id])
  end

   def create
    if params[:password] == params[:password_confirmation]
      @player = Player.create(player_params)
      if @player.save
        session[:player_id] = @player.id
        redirect_to player_path(@player)
      else
        redirect_to new_player_path
      end
    else
      redirect_to new_player_path
    end
  end

private

  def player_params
    params.require(:player).permit(:name, :password, :password_confirmation)
  end
end
