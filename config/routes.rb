Rails.application.routes.draw do
  resources :reviews
  resources :addresses
  resources :profiles
  get 'pages/home'

  resources :photos
  resources :bicycles
  devise_for :users

  root 'pages#home'

end
