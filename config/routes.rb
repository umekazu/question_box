Rails.application.routes.draw do
  root 'questions#index'
  resources :questions
  resources :posts,      only: [:create, :destroy]
end
