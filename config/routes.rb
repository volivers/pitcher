Rails.application.routes.draw do


  get 'steps/index'
  get 'steps/new'
  get 'steps/create'
  get 'steps/edit'
  get 'steps/update'
  get 'steps/destroy'
  get 'userjourneys/index'
  get 'userjourneys/new'
  get 'userjourneys/create'
  get 'userjourneys/show'
  get 'userjourneys/edit'
  get 'userjourneys/update'
  get 'userjourneys/destroy'
  devise_for :users
  root to: 'demos#dashboard'

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
