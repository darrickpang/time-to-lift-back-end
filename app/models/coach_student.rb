class CoachStudent < ApplicationRecord
    belongs_to :coach 
    belongs_to :student
end
