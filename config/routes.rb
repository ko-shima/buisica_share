Rails.application.routes.draw do
  devise_for :users
  root to: "cards#index"
  resources :cards do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
