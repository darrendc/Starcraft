# frozen_string_literal: true

class FactionsController < ApplicationController
  before_action :authorize, only: %i[index show]
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
