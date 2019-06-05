# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
    session[:player_id]
  end
end
