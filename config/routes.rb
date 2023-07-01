Rails.application.routes.draw do
  devise_for :admins
  namespace :admin do
    get 'homes/top'
    get 'orders/show'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :sessions, only: [:new, :create, :destroy]
  end
  
  namespace :pubilc do
    get 'orders/new'
    get 'orders/confirm'
    get 'orders/done'
    get 'orders/create'
    get 'orders/index'
    get 'orders/show'
  end
  namespace :pubilc do
    get 'cart_items/index'
    get 'cart_items/update'
    get 'cart_items/destroy'
    get 'cart_items/destroy_all'
    get 'cart_items/create'
  end
  namespace :pubilc do
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
  end
  namespace :pubilc do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
    get 'customers/confirm'
    get 'customers/withdraw'
  end
  namespace :pubilc do
    get 'registrations/new'
    get 'registrations/create'
  end
  namespace :pubilc do
    get 'items/index'
    get 'items/show'
  end
  namespace :pubilc do
    get 'homes/top'
    get 'homes/about'
  end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
