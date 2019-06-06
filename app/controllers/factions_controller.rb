# frozen_string_literal: true

class FactionsController < ApplicationController
  def index
    @factions = Faction.all
  end
end
