Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

  # resources :areas, only: [] do
  #   resources :spaces, only: [:index]
  #   resources :restaurants, only: [:index]
  # end

  resources :plans, except: [:index] do
    resources :invites, only: [:create]
  end
  resources :spaces, only: [:show, :index] do
    member do
      post 'toggle_favorite', to: "spaces#toggle_favorite"
    end
    resources :plans do
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
    resources :plans do
      collection do
        post :restaurant
      end
    end
    resources :restaurant_reviews, only: [:new, :create]
  end
  resources :space_reviews, only: [:destroy]
  resources :restaurant_reviews, only: [:destroy]
end
