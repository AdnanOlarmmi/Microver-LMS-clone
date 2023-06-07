require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  describe 'associations' do
    it 'belongs to a user' do
      enrollment = Enrollment.reflect_on_association(:user)
      expect(enrollment.macro).to eq(:belongs_to)
    end
    it 'belongs to a course' do
      enrollment = Enrollment.reflect_on_association(:course)
      expect(enrollment.macro).to eq(:belongs_to)
    end
  end

  describe 'validations' do
    it 'is not valid without a user_id' do
      enrollment = Enrollment.new(user_id: nil)
      expect(enrollment).to_not be_valid
    end
  end
end
