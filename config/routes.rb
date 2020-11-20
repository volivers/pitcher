Rails.application.routes.draw do


  # get 'personas/new'
  # get 'personas/create'
  # get 'personas/destroy'
  # get 'users/dashboard'
  # get 'demos/dashboard'
  # get 'demos/new'
  # get 'demos/create'
  # get 'demos/show'
  # get 'demos/edit'
  # get 'demos/update'

  devise_for :users
  root to: 'demos#dashboard'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "dashboard", to: "demos#dashboard"

  resources :demos, except: [:index] do
    resources :pitches, only: [:new, :create, :edit, :update]
    resources :personas
  end
end
