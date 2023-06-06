class CoursesController < ApplicationController
    def enroll
        course = Course.find(params[:id])
        current_user.courses << course
        render json: { message: "Enrollment successful" }
    end
end
