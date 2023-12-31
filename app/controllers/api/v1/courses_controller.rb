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
    render json: "Enrolled in #{course.name} successfully, Congratulations", status: :ok
  end
end
