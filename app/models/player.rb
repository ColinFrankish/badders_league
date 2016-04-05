class Player < ActiveRecord::Base

  validates :firstname, presence: true

end
