class SessionsController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    player = Player.find_by(name: params[:player][:name])
    if player && player.authenticate(params[:player][:password])
      redirect_to player_path(player)
    else
      redirect_to "/"
    end
    # if params[:name].nil? || params[:name].empty?
    #   redirect_to controller: "sessions", action: "new"
    # else
    #   session[:name] = params[:name]
    #   redirect_to "/"
    # end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to "/"
  end
end
