require 'rails_helper'
require 'player'


RSpec.describe Player, type: :model do
  
  context "Game possibilities in singles matches. A player:" do
    before :each do
      @player = Player.new 
    end

    it "can win a singles and a doubles game" do
      @player.wins_singles_match
      @player.wins_doubles_match
      @player.save
      expect(@player.singles_wins).to eq 1
      expect(@player.doubles_wins).to eq 1
    end

    it "can lose a singles and a doubles game" do
      @player.loses_singles_match
      @player.loses_doubles_match
      @player.save
      expect(@player.singles_losses).to eq 1
      expect(@player.doubles_losses).to eq 1
    end
  end
end
