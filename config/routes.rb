Rails.application.routes.draw do
  root to: 'pages#index'

  resources :products do
    resources :reviews
  end
end
