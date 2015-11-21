class Encounter < ActiveRecord::Base
    has_many :pulls
    has_many :characters
end
