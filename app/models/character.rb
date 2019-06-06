# frozen_string_literal: true

class Character < ApplicationRecord
  belongs_to :player, required: nil
  belongs_to :faction, required: nil
end
