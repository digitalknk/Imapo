Imapo::Application.routes.draw do
  resources :images
  
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  resources :users
  resources :sessions
  
  root :to => "images#index"
end
