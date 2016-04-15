class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.string :nickname
      t.integer :singles_wins,          :default => 0     
      t.integer :singles_losses,        :default => 0
      t.integer :doubles_wins,          :default => 0
      t.integer :doubles_losses,        :default => 0
      t.integer :singles_games_won,     :default => 0
      t.integer :singles_games_lost,    :default => 0
      t.integer :doubles_games_won,     :default => 0
      t.integer :doubles_games_lost,    :default => 0
      t.integer :total_singles_points,  :default => 0
      t.integer :total_doubles_points,  :default => 0

      t.timestamps null: false
    end
  end
end
