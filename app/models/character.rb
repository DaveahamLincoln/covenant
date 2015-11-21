class Character < ActiveRecord::Base
    belongs_to :player
    has_many :squads
end
