# frozen_string_literal: true

class Player < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true
  has_many :characters
  has_many :factions, through: :characters
  has_secure_password

  scope :search, ->(name) { where(name: name) }
end
