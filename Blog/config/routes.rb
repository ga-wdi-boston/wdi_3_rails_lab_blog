Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, only: [:index, :show, :new, :create, :update]
  resources :comments, only: [:create]
end
