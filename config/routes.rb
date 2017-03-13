Rails.application.routes.draw do
  resources :user_phones
  resources :user_adresses
  resources :reviews
  resources :order_items
  resources :orders
  resources :categories
  resources :cards
  resources :authors
  resources :users
  resources :tests
  resources :models
  resources :books
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
