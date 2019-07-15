# frozen_string_literal: true

class CharactersController < ApplicationController
  before_action :authorize, only: %i[new create]
  def new
    @character = Character.new
    @player = current_player
  end

  # create character
  def create
    name = params[:character][:name]
    faction_id = params[:character][:faction_id]
    character = Character.new(name: name, faction_id: faction_id)
    character.player_id = session[:player_id]
    character.save!
    respond_to do |format|
      format.json do
        render :json => character.to_json(:include => { :faction => { :only => :name } })
      end
    end
  end

private

  def character_params
    params.require(:character).permit(:faction_id, :name)
  end
end
