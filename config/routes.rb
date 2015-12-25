Rails.application.routes.draw do
  root to: "articles#index"

  resources :articles, only: [:create, :index, :destroy]
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]
end
