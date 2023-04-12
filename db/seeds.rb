# frozen_string_literal: true

require 'faker'

require_relative 'seeds/partners'
require_relative 'seeds/articles'
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
