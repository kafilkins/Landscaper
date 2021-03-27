Rails.application.routes.draw do

  get '/signup/employee' => 'employees#new'
  get '/signup/customer' => 'customers#new'
  
  # always do custom routes before these resources route
  
  resources :customers
  resources :jobs
  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
