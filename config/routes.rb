Rails.application.routes.draw do
  
  devise_for :clientes
  devise_for :admins
  resources :contacts
  resources :orders
  resources :products
  resources :menu
  root 'home#index'

  get 'add_item/:id', to: 'orders#add_item', as: 'add_item'
  get 'close_order/:id', to: 'orders#close_order', as: 'close'
  get 'reservation', to: 'contacts#reservation', as: 'reserv'
end
