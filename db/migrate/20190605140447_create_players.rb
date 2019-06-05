class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :password_digest
      t.integer :gold
      t.integer :strength
      t.integer :skill
    end
  end
end
