require 'rails_helper'


RSpec.describe Api::V1::UsersController, type: :controller do
  describe 'POST #create' do
    context 'when the user is created' do
      before(:each) do
        @user_params = {
          user: {
            email: 'adnan@gmail.com',
            password: 'adnan'
          }
        }
        post :create, params: @user_params
      end

      it 'returns the user record corresponding to the given email' do
        expect(response.body).to include(@user_params[:user][:email])
      end

      it 'returns a created status' do
        expect(response).to have_http_status(:created)
      end

      it 'returns a valid bcrypt token' do
        json_response = JSON.parse(response.body)
        expect(json_response['password_digest']).to be_present
      end
    end
  end
end
