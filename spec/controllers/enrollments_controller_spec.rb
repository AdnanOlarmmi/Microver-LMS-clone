require 'rails_helper'

RSpec.describe Api::V1::EnrollmentsController, type: :controller do
  describe 'POST #create' do
    context 'when the enrollment is created' do
      before(:each) do
        @user = User.create(email: 'adnan@gmail.com', password: 'adnan')
        @course = Course.create(name: 'course1', description: 'description1')
        @enrollment_params = {
          enrollment: {
            user_id: @user.id,
            course_id: @course.id
          }
        }
        post :create, params: @enrollment_params
      end
    end
    it 'returns return ok upon enrollment' do
      expect(response).to have_http_status(:ok)
    end
  end
end
