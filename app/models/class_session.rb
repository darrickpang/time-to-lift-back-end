class ClassSession < ApplicationRecord
    belongs_to :gym
    belongs_to :coach
    has_many :class_list
    has_many :students, through: :class_list
end
