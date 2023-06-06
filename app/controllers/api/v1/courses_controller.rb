
require_relative '../../../assets/workers/fetch_courses_worker.rb'

class Api::V1::CoursesController < ApplicationController
    before_action :authorize_request, except: [:index]
  
    # def fetch_courses
    #     FetchCoursesWorker.perform_async
    #     render json: { message: 'Courses fetch initiated' }, status: :ok
    # end


    def index
    url = 'https://microverse-take-home-api.herokuapp.com/api/v1/courses'
    headers = { 'Authorization' => 'Bearer tooth.RED.bear.fork' }

    response = HTTParty.get(url, headers: headers)

    if response.code == 200
        courses_data = JSON.parse(response.body)['data']
        courses_data.each do |course_data|
          course_attributes = course_data['attributes']
          Course.find_or_create_by(course_id: course_data['id']) do |new_course|
            new_course.id = course_data['id']
            new_course.name = course_attributes['title']
            new_course.description = course_attributes['description']
          end
        end
      
        @courses = Course.all
        render json: @courses, status: :ok
      else
        # Handle error cases, e.g., log the error or show an error message
        @courses = []
        render json: { message: 'Error fetching courses' }, status: :unprocessable_entity
      end
    end
#   def index
#     if Rails.cache.read('courses_fetched')
#       courses = Course.all
#       render json: courses, status: :ok
#     else
#       render json: { message: 'Courses not fetched yet' }, status: :ok
#     end
#   end
  
    def enroll
        course = Course.find(params[:id])
        if @current_user.courses.include?(course)
            render json: { message: 'You are already enrolled' }, status: :ok
            return
        end
        Enrollment.create(user_id: @current_user.id, course_id: course.id)
        # render json: @current_user, status: :ok
        # render json: @current_user, status: :ok
    #   course = Course.find(params[:id])
    #   @current_user.courses << course
    render json:  @current_user.courses, status: :ok
    #   render json: { message: 'Enrolled successfully' }, status: :ok
    end
end
  
# every 1.day, at: '08:50 pm' do
#     runner 'FetchCoursesWorker.perform_async'
# end
  