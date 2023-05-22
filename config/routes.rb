Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pedidos
  get 'pedidos/index'
  resources :homes
  resources :layouts
  resources :users
  resources :tortas
  
  root 'pedidos#index'

end
