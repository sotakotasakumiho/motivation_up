Rails.application.routes.draw do
  resources :users
  resources :posts

  root 'home#index'
  resources :home, only: [:index, :show]
  
end
