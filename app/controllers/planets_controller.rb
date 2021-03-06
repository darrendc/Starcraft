# frozen_string_literal: true

class PlanetsController < ApplicationController
  before_action :authorize, only: %i[new index create show]
  def new
    @planet = Planet.new
    @faction = Faction.find(params[:faction_id])
  end

  def index
    @planets = Planet.all
    @planet_name = @planets.find(params[:faction_id]).name
    faction_planets = Planet.where(faction_id: params[:faction_id])
    render json: faction_planets.to_json
    # json format
  end

  def create
    planet = Planet.create(planet_params)
    faction = Faction.find(params[:faction_id])
    planet.faction = faction
    if planet.save
      redirect_to faction_planet_path(faction, planet)
    else
      flash[:error] = "Invalid Planet Name"
      redirect_to new_faction_planet_path
    end
  end

  def show
    @planet = Planet.find(params[:id])
    @faction = Faction.find(params[:faction_id])
  end

private

  def planet_params
    params.require(:planet).permit(
      :name,
      :faction_id
    )
  end
end
