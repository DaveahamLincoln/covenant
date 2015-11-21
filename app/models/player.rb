class Player < ActiveRecord::Base
    belongs_to :squad
    has_many :characters
end
