# frozen_string_literal: true

class Character < ApplicationRecord
  validates :name, presence: true
  validates :faction, presence: true
  belongs_to :player, required: nil
  belongs_to :faction, required: nil
end
