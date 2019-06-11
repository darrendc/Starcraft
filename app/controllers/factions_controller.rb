# frozen_string_literal: true

class FactionsController < ApplicationController
  def new
    @faction = Faction.new
  end

  def index
    @factions = Faction.all
  end

  def show
    @faction = Faction.find(params[:id])
    @player = current_player
  end
end
