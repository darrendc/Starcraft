class PlanetsController < ApplicationController

  def new
    @planet = Planet.new
    @faction = Faction.find(params[:faction_id])
  end

  def create
    planet = Planet.create(planet_params)
    faction = Faction.find(params[:faction_id])
    planet.faction = faction
    planet.save
    redirect_to faction_planet_path(faction, planet)
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
