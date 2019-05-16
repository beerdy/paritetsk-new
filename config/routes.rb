Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  root 'pages#index'
  
  get 'pages/index'
  get 'pages/contact'
  get 'pages/about'
  get 'pages/works'
  get 'pages/catalog'

  resources :galleries
  resources :users
  resources :messages
  resources :categories

  resources :products do
    collection do
      post :upload
    end
  end
  resources :contents

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
