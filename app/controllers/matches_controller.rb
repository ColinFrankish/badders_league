class MatchesController < ApplicationController
  def index
  end


  def new
    @match = Match.new
  end
end
