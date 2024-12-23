Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/exercises" => "exercises#index"
  patch "/exercises/:id" => "exercises#update"
  post "/exercises" => "exercises#create"
  
  get "/routines" => "routines#index"
  post "/routines" => "routines#create"
  patch "/routines/:id" => "routines#update"
  delete "/routines/:id" => "routines#destroy"

  get "/users/current" => "users#show"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  post "/password/forgot" => "passwords#forgot"
  post "/password/verify_code" => "passwords#verify_code"
  post "/password/reset" => "passwords#reset"


  # Defines the root path route ("/")
  # root "posts#index"
end
