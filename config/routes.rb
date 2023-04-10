# frozen_string_literal: true

Rails.application.routes.draw do
  get 'gallery/index'
  scope '(:locale)', locale: /en|ua/ do
    root 'main#index'
    resources :about
    resources :articles
    resources :gallery
  end
end
