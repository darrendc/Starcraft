# frozen_string_literal: true

class Faction < ApplicationRecord
  validates :name, :description, presence: true
  has_many :characters
  has_many :planets
  has_many :players, through: :characters
end
