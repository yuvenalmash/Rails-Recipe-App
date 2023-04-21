Rails.application.routes.draw do
  devise_for :users
  root "publicrecipes#index"
  resources :users, only: %i[index show] do
    resources :foods, only: %i[index show new create destroy] do
      resources :recipefoods, only: %i[show new create edit update destroy]
    end
    resources :recipes, only: %i[index show create update new destroy] do
      resources :recipefoods, only: %i[show new create edit update destroy]
      resources :shoppinglists, only: %i[show]
    end
  end
  resources :publicrecipes, only: [:index]
end
