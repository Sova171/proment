# frozen_string_literal: true

class AboutController < ApplicationController
  def index
    @facade = ::Abouts::IndexFacade.new
  end
end
