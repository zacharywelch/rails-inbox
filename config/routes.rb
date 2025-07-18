Rails.application.routes.draw do
  root 'emails#index'

  resources :emails, only: [:index, :show] do
    member do
      patch :star
    end
  end

  mount Lookbook::Engine, at: "/lookbook"

  get "up" => "rails/health#show", as: :rails_health_check
end
