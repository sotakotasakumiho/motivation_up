Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations',sessions: 'users/sessions'}
  resources :users

  resources :posts

  root 'home#index'
  resources :home, only: [:index, :show]
  
end
