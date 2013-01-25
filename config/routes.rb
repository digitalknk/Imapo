Imapo::Application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  resources :users
  resources :sessions
  
  root :to => "home#index"
end
