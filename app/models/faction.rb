# frozen_string_literal: true

class Faction < ApplicationRecord
  has_many :characters
  has_many :players, through: :characters
end
