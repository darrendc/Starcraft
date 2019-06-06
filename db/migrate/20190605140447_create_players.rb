# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :password_digest
    end
  end
end
