# frozen_string_literal: true

class Planet < ApplicationRecord
  belongs_to :faction, required: nil
end
