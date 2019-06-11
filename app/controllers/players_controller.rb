# frozen_string_literal: true

class PlayersController < ApplicationController
  before_action :authorize, only: %i[index show search]

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

  # Player Search
  def search
    @player = Player.search(params[:player][:name]).first
    if @player
      redirect_to player_path(@player.id)
    else
      flash[:error] = "Player Not Found"
      redirect_to players_path
    end
  end

  # Signup
  def create
    if params[:password] == params[:password_confirmation]
      @player = Player.new(player_params)
      signup
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

  def signup
    if @player.save
      session[:player_id] = @player.id
      redirect_to player_path(@player)
    else
      flash[:error] = @player.errors.full_messages
      redirect_to new_player_path
    end
  end
end
