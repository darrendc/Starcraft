# frozen_string_literal: true

class PlayersController < ApplicationController
  before_action :authorize, only: [:index, :show]

  def new
    @player = Player.new
  end

  def index
    @players = Player.all
    @player = Player.new
    @current_player = current_player
  end

  def show
    @player = Player.find(params[:id])
    @can_create_hero = can_create_hero?(@player)
  end

  def search
    @player = Player.search(params[:player][:name]).first
    if @player
      redirect_to player_path(@player.id)
    else
      redirect_to players_path
    end
  end

   def create # Signup
    if params[:password] == params[:password_confirmation]
      @player = Player.new(player_params)
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

  def can_create_hero?(player)
    Player.find_by(id: session[:player_id]) == player
  end

  def player_params
    params.require(:player).permit(:name, :password, :password_confirmation)
  end
end
