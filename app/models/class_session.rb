class ClassSession < ApplicationRecord
    belongs_to :gym
    belongs_to :coach
    has_many :class_lists
    has_many :students, through: :class_lists
end
