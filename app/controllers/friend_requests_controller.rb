class FriendRequestsController < ApplicationController
    def index 
        friend_requests = FriendRequest.all
    end 

    def new
        friend_request = FriendRequest.new
    end

    def create 
        # byebug
        friend_request = FriendRequest.create(friend_request_params)
        render json: friend_request
    end

    def show
        friend_request = FriendRequest.find(params[:id])
        render json: friend_request
    end

    def edit
        friend_request = FriendRequest.find(params[:id])
    end

    def update 
        friend_request = FriendRequest.find(params[:id])
        friend_request.update(friend_request_params)
        render json: friend_request
    end

    private
    def friend_request_params
        params.require(:friend_request).permit(:requestor_id, :receiver_id, :status)
    end
end
