Rails.application.routes.draw do
# 顧客用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}


  namespace :admin do
    get 'homes/top'
    get 'orders/show'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
  end


  namespace :public do
    get 'homes/top'
    get 'homes/about'
    resources :items, only: [:index, :show]
  end

  namespace :public do
    get 'customers/mypage', to: 'customers#show'
    get 'customers/information/edit', to: 'customers#edit'
    patch 'customers/information', to: 'customers#update'
    get 'customers/confirm_withdraw', to: 'customers#confirm'
    patch 'customers/withdraw', to: 'customers#withdraw'
  end

  namespace :public do
    get 'cart_items/index'
    patch 'cart_items/update'
    delete 'cart_items/:id', to: 'cart_items#destroy'
    delete 'cart_items/destroy_all', to: 'cart_items#destroy_all'
    post 'cart_items/create'
  end

  namespace :public do
    get 'orders/new'
    post 'orders/confirm', to: 'orders#confirm'
    get 'orders/done', to: 'orders#done'
    post 'orders/create'
    get 'orders/index'
    get 'orders/show'
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
