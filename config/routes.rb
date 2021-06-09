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
    resources :plans, only: [] do
      collection do
        post :space
      end
    end
  end

  resources :restaurants, only: [:show, :index] do
    resources :plans, only: [] do
      collection do
        post :restaurant
      end
    end
  end
  resources :plans, only: [:new, :create, :destroy, :edit, :update, :show]
end
