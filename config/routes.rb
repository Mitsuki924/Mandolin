Rails.application.routes.draw do
  get "users/show"
  devise_for :users

  # 共通機能
  resources :tweets do
    resource :likes, only: [:create, :destroy]
  end
  
  resources :movies
  resources :users, only: [:show]

  get 'about' => 'homes#about'

  # ★root を homes#top に変更！
  root "homes#top"
end
