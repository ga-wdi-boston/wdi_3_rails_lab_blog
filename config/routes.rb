Rails.application.routes.draw do
  resources :posts, only: [:index, :show]
  resources :comments
  root 'posts#index'

end
