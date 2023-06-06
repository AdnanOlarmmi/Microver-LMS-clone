class UsersController < ApplicationController
    def enrolled_courses
        courses = current_user.courses
        render json: courses, each_serializer: CourseSerializer
    end
end
