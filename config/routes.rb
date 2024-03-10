Rails.application.routes.draw do
  resources :tasks
  resources :tops, only: %i(index)
  resources :users
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  
  devise_scope :user do
    delete '/user_logout', to: 'devise/sessions#destroy', as: :logout_user
  end

  resources :users, only: %i(index show)
  resources :blogs

  root 'tops#index'
end
