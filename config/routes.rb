Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "foods#index" #change this to some sort of homepage maybe?
  resources :foods do
    member do
      post 'add_supply'
      delete 'remove_supply'
    end
  end
  match 'recipes/possible' => 'recipes#possible', :via => :get
  resources :recipes #do
    #  member do
  #     post 'add_favorite'
  #     delete 'remove_favorite'

    #  end
  # end
end
