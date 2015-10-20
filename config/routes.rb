Rails.application.routes.draw do
  namespace :admin do
    root 'places#index'

    resources :welcome, only: :index
    resources :comments
    resources :places
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' },
                     skip: [:registrations]

  root 'welcome#index'
end
