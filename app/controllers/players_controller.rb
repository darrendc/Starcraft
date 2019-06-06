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
    @player = Player.new(player_params)

    respond_to do |format|
    if player.save
      format.html { redirect_to players_url, notice: 'User was successfully created.' }
      format.json { render action: 'show', status: :created, location: @player }
    else
      format.html { render aciton: 'new' }
      format.json {rnder json: @players.error, status: unprocessable_entity}
      end
    end
  end
end
