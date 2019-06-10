class PlanetsController < ApplicationController

  def new
    @planet = Planet.new
  end

  def create
    planet = Planet.new(planet_params)
  end
end
