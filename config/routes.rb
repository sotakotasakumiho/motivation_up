Rails.application.routes.draw do
  get '/' => "home#index"
  get "show" => "home#show"
  resources :home, only: [:index, :show]
  
end
