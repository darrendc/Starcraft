# frozen_string_literal: true

class Attraction < ApplicationRecord
  belongs_to :planet
  has_many :characters
  has_many :players, through: :characters
end
