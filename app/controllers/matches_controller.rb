class MatchesController < ApplicationController
  
  def initialize
    @matches = Match.all
  end


  def index
    @matches
  end

  def create_singles_match
    
  end

  def create_doubles_match
    
  end
end
