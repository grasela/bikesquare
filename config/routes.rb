Rails.application.routes.draw do
  resources :bicycles
  devise_for :users

  root 'bicycles#index'

end
