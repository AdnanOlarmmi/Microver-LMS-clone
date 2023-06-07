require 'rails_helper'

RSpec.describe Api::V1::AuthenticationController, type: :controller do
  describe 'POST #authenticate' do
    context 'when the user is authenticated' do
      before(:each) do
        @user = User.create(email: 'adnan@gmail.com', password: 'adnan')
        @user_params = {
          user: {
            email: @user.email,
            password: @user.password
          }
        }
        post :login, params: @user_params
      end
    end
    it 'returns a valid resoponse' do
      expect(response).to have_http_status(:ok)
    end
  end
end
