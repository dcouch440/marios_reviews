Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'


  get 'products/search', to: 'products#search'

  resources :products do
    resources :reviews
  end

end
