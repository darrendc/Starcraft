# frozen_string_literal: true

class CharactersController < ApplicationController
  before_action :authorize, only: %i[new create]
  def new
    @character = Character.new
    @player = current_player
  end

  # create character
  def create
    character = Character.new(character_params)
    character.player_id = session[:player_id]
    if character.save
      redirect_to player_path(character.player)
    else
      flash[:error] = character.errors.full_messages
      redirect_to "/characters/new"
    end
  end

private

  def character_params
    params.require(:character).permit(:faction_id, :name)
  end
end
