Rails.application.routes.draw do
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :update]
      resources :listings, only: [:index, :show]
      resources :cities, only: [:index, :show ]
      resources :bookings, only: [:create, :update, :destroy]
      resources :favorites, only: [:create, :destroy]
    end
  end
end
