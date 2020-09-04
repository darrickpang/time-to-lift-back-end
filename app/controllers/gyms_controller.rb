class GymsController < ApplicationController
    def index 
        gyms = Gym.all
        render json: gyms
    end

    def new
        gym = Gym.new
    end

    def create 
        gym = Gym.create(gym_params)
        render json: gym
    end

    def show
        gym = Gym.find(params[:id])
        render json: gym
    end

    def edit
        gym = Gym.find(params[:id])
    end

    def update 
        gym = Gym.find(params[:id])
        gym.update(gym_params)
        render json: gym
    end

    private
    def gym_params
        params.require(:gym).permit(:name, :address, :city, :zip_code)
    end
end
