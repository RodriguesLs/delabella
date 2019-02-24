Rails.application.routes.draw do
  devise_for :clientes
  devise_for :admins
  resources :orders
  resources :products
  resources :menu
  root 'home#index'

  get 'add_item/:id', to: 'orders#add_item', as: 'add_item'
end
