# spec/factories/user.rb
FactoryBot.define do
    factory :user do
      email { Faker::Internet.email }
      password { 'password' }
    end
end
  