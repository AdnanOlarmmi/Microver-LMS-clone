class Api::V1::UsersController < ApplicationController
     skip_before_action :authorize_request, only: :create

    def create
      user = User.new(user_params)
      if user.save
        render json: user, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def enrolled_courses
      courses = @current_user.courses
      render json: courses, status: :ok
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
  