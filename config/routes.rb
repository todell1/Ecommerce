Rails.application.routes.draw do

  # Remove duplicate routes
  # get 'checkout/shipping'
  # get 'checkout/payment'

  devise_for :users, controllers: { sessions: 'sessions' }

  root to: redirect('/home')

  get 'checkout/shipping', to: 'checkout#shipping', as: 'checkout_shipping'
  get 'checkout/payment', to: 'checkout#payment', as: 'checkout_payment'
  post 'checkout/complete', to: 'checkout#complete', as: 'checkout_complete'
  get 'checkout/summary', to: 'checkout#summary', as: 'checkout_summary'
  post 'checkout/shipping_address', to: 'checkout#save_shipping_address', as: 'checkout_shipping_address'

  resources :checkout, only: [:payment, :summary]

  resources :orders, only: [:summary] do
    member do
      get :summary
    end
  end 

  resource :cart, only: [:show] do
    resources :cart_items, only: [:create, :update, :destroy]
  end
  resources :cart_items, only: [:create, :update, :destroy]

  resources :users do
    collection do
      get 'edit_shipping_address'
      get 'order'
      patch 'update_shipping_address'
      get 'past_orders'
    end
  end
 
  get 'order/:id', to: 'orders#show', as:'order'

  get 'pages', to: 'pages#index', as: 'pages'
  get 'pages/:id', to: 'pages#show', as:'page'
  get 'home', to: 'pages#home', as: 'home'

  root 'products#index'

  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  resources :products

  get 'components', to: 'pages#components', as: 'components'
  get 'empty_cart', to: 'carts#empty', as: 'empty_cart'

  get 'cpus', to: 'cpus#index', as: 'cpus'
  get 'cpu/:id', to: 'cpus#show', as: 'cpu'

  get 'gpus', to: 'gpus#index', as: 'gpus'
  get 'gpu/:id', to: 'gpus#show', as: 'gpu'

  get 'cases', to: 'cases#index', as: 'cases'
  get 'cases/:id', to: 'cases#show', as: 'case'

  get 'coolers', to: 'coolers#index', as: 'coolers'
  get 'coolers/:id', to: 'coolers#show', as: 'cooler'

  get 'motherboards', to: 'motherboards#index', as: 'motherboards'
  get 'motherboards/:id', to: 'motherboards#show', as: 'motherboard'

  get 'psus', to: 'psus#index', as: 'psus'
  get 'psus/:id', to: 'psus#show', as: 'psu'

  get 'rams', to: 'rams#index', as: 'rams'
  get 'rams/:id', to: 'rams#show', as: 'ram'

  get 'storages', to: 'storages#index', as: 'storages'
  get 'storages/:id', to: 'storages#show', as: 'storage'

end
