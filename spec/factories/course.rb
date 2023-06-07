# spec/factories/course.rb
FactoryBot.define do
    factory :course do
      name { Faker::Lorem.word }
      description { Faker::Lorem.sentence }
    end
end
  