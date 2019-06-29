Rails.application.routes.draw do
  resources :support_contracts
  resources :projects
  resources :users
  post 'login' => "users#login"
  get '/validate' => 'users#validate'
  get 'user_data' => 'users#user_data'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
