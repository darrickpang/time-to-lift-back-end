class Gym < ApplicationRecord
    has_many :gym_coaches
    has_many :class_sessions
    has_many :coaches, through: gym_coaches
end
