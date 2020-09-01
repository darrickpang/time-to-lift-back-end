class ApplicationController < ActionController::API
    # student log-in or sign up
    def encode_token(payload)
        JWT.encode(payload, 'time-to-lift')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'time-to-lift', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_student
        if decoded_token
            student_id = decoded_token[0]['student_id']
            @student = Student.find_by(id: student_id)
        end
    end
    
    def logged_in?
        !!current_student
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end

    # coach sign-up or sign-in
    def encode_token_coach(payload)
        JWT.encode(payload, 'time-to-lift')
    end

    def auth_header_coach
        request.headers['Authorization']
    end

    def decoded_token_coach
        if auth_header_coach
            coach_token = auth_header_coach.split(' ')[1]
            begin
                JWT.decode(coach_token, 'time-to-lift', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_coach
        if decoded_token_coach
            coach_id = decoded_token_coach[0]['coach_id']
            @coach = Coach.find_by(id: coach_id)
        end
    end

    def coach_logged_in?
        !!current_coach
    end

    def authorized_coach
        render json: { message: 'Please log in' }, status: :unauthorized unless coach_logged_in?
    end
end