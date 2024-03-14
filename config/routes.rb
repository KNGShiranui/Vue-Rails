Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  devise_scope :user do
    delete '/user_logout', to: 'devise/sessions#destroy', as: :logout_user
  end
  
  resources :tops, only: %i(index)
  resources :users, only: %i(index show)
  resources :tasks do
    collection do
      get 'my_index', as: :my
    end
  end
  namespace :api do
    namespace :v1 do
      resources :tasks, only: %i(index create update destroy)
    end
  end
  resources :blogs

  root 'tops#index'
end
