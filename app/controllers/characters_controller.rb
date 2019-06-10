# frozen_string_literal: true

class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def index
    @characters = Character.all
  end

  def create #create character
    character = Character.new(character_params)
      character.player_id = session[:player_id]
    if character.save
      redirect_to player_path(character.player)
    else
      redirect_to "/characters/new"
    end
  end

private

  def character_params
    params.require(:character).permit(:faction_id, :name)
  end
end
