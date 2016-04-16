Rails.application.routes.draw do
  devise_for :users

  root 'forum#index'

  resources :forum_threads, only: :show do
    resources :comments, only: :create
  end
end
