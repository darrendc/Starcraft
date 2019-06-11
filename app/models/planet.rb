# frozen_string_literal: true

class Planet < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :faction, required: nil
end
