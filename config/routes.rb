Rails.application.routes.draw do
 
  root 'questions#index'
  resources :questions
  resources :posts

end
