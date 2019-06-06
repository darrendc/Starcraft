# frozen_string_literal: true

class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.integer :player_id
      t.integer :faction_id
      t.string :name
    end
  end
end
