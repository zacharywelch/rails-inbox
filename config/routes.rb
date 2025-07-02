Rails.application.routes.draw do
  resources :emails, only: [:index, :show]
  root 'emails#index'
  get "up" => "rails/health#show", as: :rails_health_check
end
