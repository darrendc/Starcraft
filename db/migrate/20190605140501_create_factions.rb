# frozen_string_literal: true

class CreateFactions < ActiveRecord::Migration[5.2]
  def change
    create_table :factions do |t|
      t.string :name
      t.text :description
    end
  end
end
