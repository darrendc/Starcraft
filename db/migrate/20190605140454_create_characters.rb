class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.integer :player_id
      t.integer :faction_id
    end
  end
end
