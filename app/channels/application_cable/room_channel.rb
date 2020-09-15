class RoomChannel < ApplicationCable::Channel 
    def subscribed
        if params[:room_id].present?
            stream_from("ChatRoom-#{(params[:room_id])}")
        end
    end
end 