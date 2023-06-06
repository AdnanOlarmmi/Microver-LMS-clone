
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create] do
        get '/enrolled_courses', to: 'users#enrolled_courses', on: :collection
      end
      post '/login', to: 'authentication#login'
      resources :courses, only: [:index] do
        post '/enroll', to: 'courses#enroll', on: :member
      end
    end
  end
end