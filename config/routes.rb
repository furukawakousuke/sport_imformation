Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :admin
  devise_for :customer
  namespace :admin do
    resources :sport_genres,only:[:index,:edit,:create,:update,:destroy]
    resources :informations,only:[:index,:show,:destroy]
    resources :customers,only:[:index,:show]
  end
  scope module: :customer do
    resources :favorites,only:[:index]
    get "search" => "informations#search"
    resources :informations,only:[:new,:index,:show,:edit,:create,:update,:destroy]
    get 'customer/mypage' => 'customers#show'
    resources :customers,only:[:edit,:update]
    resources :favorites,only:[:index,:create,:destroy]
    resources :comments,only:[:create,:destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
