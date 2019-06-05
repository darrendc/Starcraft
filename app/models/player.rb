# frozen_string_literal: true

class Attraction < ApplicationRecord
  has_many :characters
  has_many :factions, through: :characters
end
