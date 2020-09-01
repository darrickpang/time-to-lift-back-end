class Gym < ApplicationRecord
    has_many :gym_coaches
    has_many :class_sessions
    has_many :coaches, through: :gym_coaches

    validates :name, uniqueness: true
    # validate :gym_name

    # def gym_name
    #     if name.blank?
    #         errors.add(:name, 'Gym needs a name.')
    #     end
    # end
end
