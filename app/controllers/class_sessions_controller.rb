class ClassSessionsController < ApplicationController
    def index 
        class_sessions = ClassSession.all
        render json: class_sessions
    end

    def new
        class_session = ClassSession.new
    end

    def create 
        class_session = ClassSession.create(class_session_params)
        render json: class_session
    end

    def show
        class_session = ClassSession.find(params[:id])
        render json: class_session
    end

    def edit
        class_session = ClassSession.find(params[:id])
    end

    def update 
        class_session = ClassSession.find(params[:id])
        class_session.update(class_session_params)
        render json: class_session
    end

    private
    def class_session_params
        params.require(:class_session).permit(:name, :location, :duration)
    end
end
