# frozen_string_literal: true

Rails.application.routes.draw do
  get 'about', to: 'about#index', as: 'about'
  get 'home', to: 'home#index', as: 'home'

  resources :characters, :episodes, only: %i[index show]
  # get 'characters', to: 'characters#index', as: 'characters'
  # get 'characters/:id', to: 'characters#show', id: /\d+/

  # get 'episodes', to: 'episodes#index', as: 'episodes'
  # get 'episodes/show'

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
