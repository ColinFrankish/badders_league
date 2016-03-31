class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.string :nickname
      t.integer :singles_wins
      t.integer :singles_losses
      t.integer :doubles_wins
      t.integer :doubles_losses
      t.integer :singles_games_won
      t.integer :singles_games_lost
      t.integer :doubles_games_won
      t.integer :doubles_games_lost
      t.integer :total_singles_points
      t.integer :total_doubles_points

      t.timestamps null: false
    end
  end
end
