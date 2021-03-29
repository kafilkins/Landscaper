Rails.application.routes.draw do

  root "sessions#home"

  get '/signup/employee' => 'employees#new'
  get '/signup/customer' => 'customers#new'

  get '/sessions/customer_new' => 'sessions#customer_new'
  post '/sessions/customer_new' => 'sessions#create'

  get '/sessions/employee_new' => 'sessions#employee_new'
  post '/sessions/employee_new' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  #get '/auth/google_oauth2/callback' => 'sessions#google'

  # always do custom routes before these resources route
  
  resources :customers do 
    resources :jobs, only: [:new, :create, :index]
  end
  resources :jobs
  resources :employees do 
    resources :jobs, only: [:new, :create, :index]
  end
  
end
