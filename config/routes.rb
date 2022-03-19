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
    resources :addresses,only:[:new,:index,:edit,:create,:destroy,:update]
    resources :cart_items,only:[:index,:create,:destroy,:destroy_all,:update]
    resources :orders,only:[:new,:show,:index,:create,:confilm,:complete]
    resources :items,only:[:show,:index]
    resources :customers,only:[:show,:edit,:unsubscribe,:withdraw,:update]
  end

  namespace :admin do
    root to: "homes#top"
    resources :genres,only:[:new,:index,:edit,:create,:update]
    resources :orders,only:[:show,:update]
    resources :items,only:[:new,:show,:index,:create,:update]
    resources :customers,only:[:show,:index,:edit,:update]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
