Rails.application.routes.draw do
  root 'forum#index'

  devise_for :users
end
