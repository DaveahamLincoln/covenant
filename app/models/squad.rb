class Squad < ActiveRecord::Base
    has_many :characters
    has_many :pulls
end
