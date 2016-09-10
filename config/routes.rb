
Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
	resources :users, only: [:show, :edit, :update]
	resources :posts, only: [:new, :create]
  root 'homes#show'
end