Rails.application.routes.draw do
  get 'products/index'
  get 'products/new'
  get 'products/create'
  get 'products/update'
  get 'products/edit'
  get 'products/show'
  get 'products/create'
  get 'products/destroy'
  get 'products/new'
  get 'products/create'
  resources :products do
    resources :reviews
  end
end
