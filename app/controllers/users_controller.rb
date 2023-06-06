class UsersController < ApplicationController
    # before_action :authenticate_user!, only: [:enroll, :enrolled_courses]

    # def enroll
    #     course = Course.find(params[:id])
    #     current_user.courses << course
    #     render json: { message: "Enrollment successful" }
    # end
    
    def enrolled_courses
        courses = current_user.courses
        render json: courses, each_serializer: CourseSerializer
    end

    def create
        user = User.new(user_params)
        if user.save
          render json: user, status: :created
        else
          render json: user.errors, status: :unprocessable_entity
        end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:email, :password)
    end
end
