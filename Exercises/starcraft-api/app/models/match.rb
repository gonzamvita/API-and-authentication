class Match < ActiveRecord::Base
  has_one :winner, class_name: 'Player', foreign_key: 'winner'
  has_one :loser, class_name: 'Player', foreign_key: 'loser'
end
