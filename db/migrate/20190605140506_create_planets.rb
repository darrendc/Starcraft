# frozen_string_literal: true

class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :faction_id
    end
  end
end
