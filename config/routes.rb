Rails.application.routes.draw do
  namespace :admin do
    resources :welcome, only: :index
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'welcome#index'
end
