Rails.application.routes.draw do

  root "sessions#home"

  get '/signup/employee' => 'employees#new'
  get '/signup/customer' => 'customers#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'
  # always do custom routes before these resources route
  
  resources :customers
  resources :jobs
  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
