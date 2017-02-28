Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "foods#index" #change this to some sort of homepage maybe?
  resources :foods
  resources :recipes
end
