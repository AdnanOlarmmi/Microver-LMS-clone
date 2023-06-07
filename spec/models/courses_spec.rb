# spec/requests/courses_spec.rb
require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'associations' do
    it 'has many enrollments' do
      course = Course.reflect_on_association(:enrollments)
      expect(course.macro).to eq(:has_many)
    end
  end


  describe 'validations' do
    it 'is valid with valid attributes' do
      course = Course.new(name: 'Course 1', description: 'Lorem ipsum')
      expect(course).to be_valid
    end
  end
  # Add more tests for other endpoints
end
