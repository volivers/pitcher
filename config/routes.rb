Rails.application.routes.draw do


  # get 'users/dashboard'
  # get 'demos/dashboard'
  # get 'demos/new'
  # get 'demos/create'
  # get 'demos/show'
  # get 'demos/edit'
  # get 'demos/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "dashboard", to: "users#dashboard"

  resources :demo, except: [:index] do
    # collection do
    #   get :dashboard
    # end
  end
end


