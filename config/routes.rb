require 'sidekiq/web'

Rails.application.routes.draw do
  resources :jobs
  devise_for :users
  root to: 'jobs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
