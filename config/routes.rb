# frozen_string_literal: true

Rails.application.routes.draw do
  get 'about', to: 'about#index', as: 'about'
  get 'home', to: 'home#index', as: 'home'

  resources :episodes, only: %i[index show]
  resources :characters, only: %i[index show] do
    collection do
      get 'search_results'
    end
  end

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
