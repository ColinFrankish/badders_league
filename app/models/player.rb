class Player < ActiveRecord::Base

  validates :firstname, presence: true

  def wins_singles_match
    self.singles_wins += 1
  end

  def wins_doubles_match
    self.doubles_wins += 1
  end

  def loses_singles_match
    self.singles_losses +=1
  end

  def loses_doubles_match
    self.doubles_losses += 1
  end
end
