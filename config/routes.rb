Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users, only: [:index, :show] do
    resources :foods, only: [:index, :show, :new, :create, :destroy] do
      resources :recipefoods, only: [:create]
    end
    resources :recipes, only: [:create, :new, :destroy, :index]do
      resources :recipefoods, only: [:create]
    end
  end
end
