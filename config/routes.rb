Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "dashboard#index"
  get 'settings', to: 'settings#index'
  get 'logout', to: 'logout#index'
  get 'sign_in', to: 'sign_in#index'
  get 'sign_up', to: 'sign_up#index'
  
end
