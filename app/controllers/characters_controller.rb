# frozen_string_literal: true

class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def index
    @characters = Character.all
  end

  def create
    character = Character.create(character_params)
    redirect_to character_path(character)
  end

private

  def character_parmas
    params.require(:character).permit(:player_id, :faction_id, :name)
  end
end
