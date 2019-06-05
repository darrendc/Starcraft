# frozen_string_literal: true

class
Character < ApplicationRecord
  belongs_to :player
  belongs_to :faction
end
