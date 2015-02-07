Rails.application.routes.draw do
  devise_for :admins
  resources :articles
  root 'pages#index'
end
