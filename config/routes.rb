Rails.application.routes.draw do
  root to: "articles#new"

  resources :articles, only: [:create, :index]
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]
end
