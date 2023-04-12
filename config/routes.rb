# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  scope '(:locale)', locale: /en|ua/ do
    root 'main#index'
    resources :about
    resources :articles
    resources :gallery
  end
end
