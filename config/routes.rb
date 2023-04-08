Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :admin
  devise_for :customer
  namespace :admin do
    resources :prefecture_genres,only:[:index,:edit,:create,:update,:destroy]
    resources :sport_genres,only:[:index,:edit,:create,:update,:destroy]
    resources :informations,only:[:index,:show,:destroy]
    resources :customers,only:[:index,:show]
  end
  scope module: :customer do
    resources :favorites, only: [:show]
    resource :favorites, only: [:create,:destroy]
    get "search" => "informations#search"
    resources :informations,only:[:new,:index,:show,:edit,:create,:update,:destroy] do
    get :search, on: :collection
    resource :favorites, only: [:create,:destroy]
    resources :comments,only:[:create,:destroy]
    end
    get 'customer/mypage' => 'customers#show'
    resources :customers,only:[:edit,:update]
    resources :favorites,only:[:index,:create,:destroy]
    resources :sport_genres,only:[:show]
    resources :prefecture_genres,only:[:show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
