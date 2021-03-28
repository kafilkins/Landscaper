Rails.application.routes.draw do

  root "sessions#home"

  get '/signup/employee' => 'employees#new'
  get '/signup/customer' => 'customers#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'


  # always do custom routes before these resources route
  
  resources :customers do 
    resources :jobs, only: [:new, :create, :index]
  end
  resources :jobs
  resources :employees do 
    resources :jobs, only: [:new, :create, :index]
  end
  
end
