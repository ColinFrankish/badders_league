class MatchesController < ApplicationController
  
  def initialize
    @matches = Match.all
    @players = Player.all
  end


  def index
    @matches
  end

  def create_singles_match
    @players
    @match = Match.new
  end

  def create_doubles_match
    
  end
end
