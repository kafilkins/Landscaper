Rails.application.routes.draw do

  root "sessions#home"

  get '/signup/employee' => 'employees#new'
  get '/signup/customer' => 'customers#new'

  get '/sessions/new' => 'sessions#new'
  post '/sessions' => 'sessions#create'

  delete "logout" => 'sessions#destroy'

  get '/auth/google_oauth2/callback' => 'sessions#google' 
  #get '/auth/github/callback' => 'sessions#github'
  # always do custom routes before these resources route

  
  resources :customers do 
    resources :jobs, only: [:new, :create, :index]
  end
  
  resources :jobs do 
    resources :tasks, only: [:new, :create, :index]
  end
  
  resources :employees do 
    resources :jobs, only: [:new, :create, :index]
  end

  resources :comments
  
end
