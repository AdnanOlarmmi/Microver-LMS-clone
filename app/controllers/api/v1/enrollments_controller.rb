class Api::V1::EnrollmentsController < ApplicationController
  def index
    @enrollments = Enrollment.all
    render json: @enrollments, status: :ok
  end

  def create
    enrollment = Enrollment.new(enrollment_params)
    if enrollment.save
      render json: enrollment, status: :created
    else
      render json: { errors: enrollment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:user_id, :course_id)
  end
end
