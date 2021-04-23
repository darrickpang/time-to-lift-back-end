class ClassListsController < ApplicationController
    def index 
        class_lists = ClassList.all 
        render json: class_lists
    end

    def new
        class_list = ClassList.new
    end

    def create
        class_list = ClassList.create(class_list_params)
        render json: class_list
    end

    private
    def class_list_params
        params.require(:class_list).permit(:student_name, :class_session_id, :student_id)
    end
end