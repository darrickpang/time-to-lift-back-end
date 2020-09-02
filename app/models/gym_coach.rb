class GymCoach < ApplicationRecord
    belongs_to :gym 
    belongs_to :coach
end
