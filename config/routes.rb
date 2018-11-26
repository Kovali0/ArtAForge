Rails.application.routes.draw do
  devise_for :users
  get 'index/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'index#home'
end
