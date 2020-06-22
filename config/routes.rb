Rails.application.routes.draw do
  root   'basic_pages#home'
  get    '/movies',   to: 'basic_pages#movies'
  get    '/about',   to: 'basic_pages#about'
  get    '/contact', to: 'basic_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]
end
