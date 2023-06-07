


class Api::V1::CoursesController < ApplicationController
    before_action :authorize_request, except: [:index]

    def index
        @courses = Course.all
        render json: @courses, status: :ok
    end
  
    def enroll
        course = Course.find(params[:id])
        if @current_user.courses.include?(course)
            render json: "You are already enrolled in #{course.name}", status: :ok
            return
        end
        Enrollment.create(user_id: @current_user.id, course_id: course.id)
        # render json: @current_user, status: :ok
        # render json: @current_user, status: :ok
    #   course = Course.find(params[:id])
    #   @current_user.courses << course
    # render json:  @current_user.courses, status: :ok
      render json:  "Enrolled in #{course.name} successfully, Congratulations", status: :ok
    end
end
  
# every 1.day, at: '08:50 pm' do
#     runner 'FetchCoursesWorker.perform_async'
# end
  