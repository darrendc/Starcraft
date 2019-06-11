# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
    session[:player_id]
  end

  def current_player
    Player.find(session[:player_id])
  end

  def authorize
    if logged_in?
    else
      redirect_to new_session_path
    end
  end
end
