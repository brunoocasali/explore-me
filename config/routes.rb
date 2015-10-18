Rails.application.routes.draw do
  resources :comments
  resources :places
  namespace :admin do
    resources :welcome, only: :index
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'welcome#index'
end
