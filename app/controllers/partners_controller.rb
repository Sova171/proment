# frozen_string_literal: true

class PartnersController < ApplicationController
  def index
    @facade = ::Partners::IndexFacade.new
  end
end
