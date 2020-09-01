class CoachesController < ApplicationController
    before_action :authorized_coach, only: [:persist]

    def new
        coach = Coach.new
    end

    def create 
        coach = Coach.create(coach_params)
        if coach.valid?
            coach_token = encode_token({coach_id: coach.id})
            render json: {coach: CoachSerializer.new(coach), coach_token: coach_token}
        else
            render json: {error: 'Unable to Create coach'}
        end
    end

    def login
        coach = Coach.find_by(name: params[:name])
        if coach && coach.authenticate(params[:password])
            coach_token = encode_token({coach_id: coach.id})
            render json: {coach: CoachSerializer.new(coach), coach_token: coach_token}
        else 
            render json: {error: 'Incorrect coach or Password'}
        end
    end

    def persist
        coach_token = encode_token({coach_id: @coach.id})
        render json: {coach: CoachSerializer.new(@coach), coach_token: coach_token}
    end

    def show
        coach = Coach.find(params[:id])
        render json: CoachSerializer.new(coach)
    end

    def edit
        coach = Coach.find(params[:id])
    end

    def update 
        coach = Coach.find(params[:id])
        coach.update(coach_params)
    end

    def destroy 
        coach = Coach.find(params[:id]).destroy
    end 

    private
    def coach_params
        params.permit(:name, :password, :age, :location)
    end
end