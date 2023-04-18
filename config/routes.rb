Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :users, only: %i[index show] do
    resources :foods, only: %i[index show new create destroy] do
      resources :recipefoods, only: [:create]
    end
    resources :recipes, only: %i[create new destroy index] do
      resources :recipefoods, only: [:create]
    end
  end
  resources :publicrecipes, only: [:index]
end
