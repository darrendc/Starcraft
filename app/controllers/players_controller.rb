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
end
