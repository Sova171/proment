# frozen_string_literal: true

Rails.application.routes.draw do
  get 'articles/index'
  scope '(:locale)', locale: /en|ua/ do
    root 'main#index'
    resources :about
    resources :articles
  end
end
