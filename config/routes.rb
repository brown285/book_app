# frozen_string_literal: true

Rails.application.routes.draw do

  resources :authors
  root 'books#index'

  resources :book_series
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
