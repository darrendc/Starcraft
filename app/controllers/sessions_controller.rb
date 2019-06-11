# frozen_string_literal: true

class SessionsController < ApplicationController
  before_action :authorize, only: %i[destroy]
  def new
    @player = Player.new
  end

  # login
  def create
    player = Player.find_by(name: params[:player][:name])
    if player&.authenticate(params[:player][:password])
      session[:player_id] = player.id
      redirect_to player_path(player)
    else
      flash[:error] = "Invalid Login"
      redirect_to "/sessions/new"
    end
  end

  # logout
  def destroy
    session.delete :player_id
    redirect_to "/"
  end
end
