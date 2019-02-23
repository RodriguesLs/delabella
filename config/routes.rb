Rails.application.routes.draw do
  devise_for :clientes
  devise_for :admins
  resources :orders
  resources :products
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
