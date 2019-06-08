class SessionsController < ApplicationController

  def new
    @player = Player.new
  end

  def create #login
    player = Player.find_by(name: params[:player][:name])
    if player && player.authenticate(params[:player][:password])
      redirect_to player_path(player)
    else
      redirect_to "/"
    end
  end

  def destroy
    session.delete :player_id
    redirect_to "/"
  end
end
