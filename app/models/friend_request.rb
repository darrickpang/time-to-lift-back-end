class FriendRequest < ApplicationRecord
    belongs_to :requestor, class_name: :student
    belongs_to :receiver, class_name: :student
end
