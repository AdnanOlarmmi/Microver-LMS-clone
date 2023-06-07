# spec/requests/courses_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it 'has many enrollments' do
      user = User.reflect_on_association(:enrollments)
      expect(user.macro).to eq(:has_many)
    end
  end


  describe 'validations' do
    it 'is valid with valid attributes' do
      user = User.new(email: 'email@gmail.com', password: 'padd')
      expect(user).to be_valid
    end
    it 'is not valid without a name' do
      user = User.new(email: nil)
      expect(user).to_not be_valid
    end
  end
  # Add more tests for other endpoints
end
