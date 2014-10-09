Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, only: [:index, :show]
  resources :comments, only: [:create]

end
