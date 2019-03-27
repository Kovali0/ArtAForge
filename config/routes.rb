Rails.application.routes.draw do
  get 'arts/index'
  devise_for :users
  get 'index/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #routes to my views
  root 'index#home'
  get '/user_profile', to: 'users#user'
  resources :arts
end
