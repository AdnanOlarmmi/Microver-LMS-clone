# spec/requests/courses_spec.rb
require 'rails_helper'

RSpec.describe 'Courses API', type: :request do
  describe 'GET /courses' do
    it 'returns a list of courses' do
      create_list(:course, 5)
      get '/courses'
      expect(response).to have_http_status(200)
      expect(json['data'].length).to eq(5)
    end
  end

  # Add more tests for other endpoints
end
