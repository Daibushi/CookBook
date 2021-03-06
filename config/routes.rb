Rails.application.routes.draw do
  devise_for :users
  root to: 'recipes#index'
  resources :recipes, only: %i[index show new create edit update]
  resources :recipe_types, only: %i[show new create]
  resources :cuisines, only: %i[show new create]
  get 'show_all', to: 'recipes#show_all', as: 'show_all'
end
