Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

  # resources :areas, only: [] do
  #   resources :spaces, only: [:index]
  #   resources :restaurants, only: [:index]
  # end

  resources :spaces, only: [:show, :index] do
    member do
      post 'toggle_favorite', to: "spaces#toggle_favorite"
    end
    resources :plans, only: [] do
      collection do
        post :space
      end
    end
    resources :space_reviews, only: [:new, :create]
  end

  resources :restaurants, only: [:show, :index] do
    member do
      post 'toggle_favorite', to: "restaurants#toggle_favorite"
    end
    resources :plans, only: [] do
      collection do
        post :restaurant
      end
    end
    resources :restaurant_reviews, only: [:new, :create]
  end
  resources :plans, only: [:new, :create, :destroy, :edit, :update, :show]
  resources :space_reviews, only: [:destroy]
  resources :restaurant_reviews, only: [:destroy]
end
