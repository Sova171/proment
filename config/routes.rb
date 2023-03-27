# frozen_string_literal: true

Rails.application.routes.draw do
  scope '(:locale)', locale: /en|ua/ do
    root 'main#index'

    resources :main
    resources :select
  end
end
