class PlanetsController < ApplicationController

  def new
    @planet = Planet.new
  end

  def create
    planet = Planet.new(planet_params)
      planet.player_id = session[:player_id]
    if planet.save
        redirect_to faction_path(faction.player)
    else
      redirect_to "/"
  end
end
