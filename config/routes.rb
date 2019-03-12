Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :new, :create]
  resources :suppliers, only: [:index, :new, :create, :destroy]
  resources :orders, only: [:index, :new, :create]
end
