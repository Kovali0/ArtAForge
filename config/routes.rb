Rails.application.routes.draw do
  devise_for :users
  get 'index/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #routes to my views
  root 'index#home'
  get '/user_profile', to: 'users#user'
  get '/new_art', to: 'users#new_art'
  get '/show_art', to: 'users#show_art'
  post '/new_art', to: 'users#new_art'
end
