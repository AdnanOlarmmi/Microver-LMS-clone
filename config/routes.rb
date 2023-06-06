Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:create]
  resources :sessions, only: [:create]
  resources :courses, only: [:index, :create] do
    member do
      post 'enroll'
    end
  end
end

