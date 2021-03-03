Rails.application.routes.draw do
  resources :exercise_activities
  resources :exercises
  resources :goals
  resources :activities
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/user_login', to: 'users#login'
  get '/user_persist', to: 'users#persist'
end
