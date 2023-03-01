require 'sidekiq/web'

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :admin do
    authenticate :admin do
      mount Sidekiq::Web => '/sidekiq'
    end
  end

  namespace :user do
    get :dashboard, to: 'dashboard#index'
  end

  root "home#index"
end
