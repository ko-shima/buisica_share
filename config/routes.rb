Rails.application.routes.draw do
  devise_for :users
  root to: "cards#index"
  resources :cards do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
