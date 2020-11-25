Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "dashboard", to: "demos#dashboard"

  resources :demos, except: [:index] do
    resources :pitches, only: [:new, :create, :edit, :update]
    resources :personas
    resources :userjourneys do
      resources :steps
    end
  end
end
