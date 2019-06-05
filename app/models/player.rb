# frozen_string_literal: true

class Player < ApplicationRecord
  has_many :characters
  has_many :factions, through: :characters
  has_secure_password
end
