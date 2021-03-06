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
  scope module: :public do
    root to: "homes#top"
    get 'about'=>"homes#about"
    delete 'cart_items/destroy_all'
    post 'orders/confilm'
    get 'orders/complete'
    get 'customers/unsubscribe'
    patch 'customers/withdraw/:id', to:'customers#withdraw', as:"customers/withdraw"
    resources :addresses,only:[:new,:index,:edit,:create,:destroy,:update]
    resources :cart_items,only:[:index,:create,:destroy,:update]
    resources :orders,only:[:new,:show,:index,:create]
    resources :items,only:[:show,:index]
    resources :customers,only:[:show,:edit,:update]
  end

  namespace :admin do
    root to: "homes#top"
    resources :genres,only:[:new,:index,:edit,:create,:update]
    resources :orders,only:[:show,:update]
    resources :items,only:[:new,:show,:index,:edit,:create,:update]
    resources :customers,only:[:show,:index,:edit,:update]
    resources :order_items,only:[:update]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
