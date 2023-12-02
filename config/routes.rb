Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :products, only: [:index, :edit, :update, :delete]
end
