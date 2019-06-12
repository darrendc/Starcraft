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
    redirect_to new_session_path unless logged_in?
  end
end
