Rails.application.routes.draw do
  get 'users/show'
  get 'bought_products/index'
  devise_for :users
  resources :products do
    patch 'buy', on: :member
  end
  resources :bought_products, only: :index
  resources :users, only: :show
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
