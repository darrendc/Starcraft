class SessionsController < ApplicationController
  def new
    @player = Player.new
  end

  def create #login
    player = Player.find_by(name: params[:player][:name])
    if player && player.authenticate(params[:player][:password])
      session[:player_id] = player.id
      redirect_to player_path(player)
    else
      redirect_to "/sessions/new"
    end
  end

  def destroy
    session.delete :player_id
    redirect_to "/"
  end
end
