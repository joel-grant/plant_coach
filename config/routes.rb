Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update]
      resources :user_plants, only: [:create, :destroy]
      resources :sessions, only: [:create]
      resources :forecast, only: [:create]
      resources :plants, only: [:create, :update, :destroy]
    end
  end
end
