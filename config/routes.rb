Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  authenticate
  resources :products do
    resources :reviews
  end
end
