class PlayersController < ApplicationController

  def new
    @planet = Planet.new
  end
end
