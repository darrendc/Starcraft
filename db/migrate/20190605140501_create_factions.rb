class CreateFactions < ActiveRecord::Migration[5.2]
  def change
    create_table :factions do |t|
      t.string :name
      t.integer :gold
      t.integer :strength_rating
      t.integer :min_skill
    end
  end
end
