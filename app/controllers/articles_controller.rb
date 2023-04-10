# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @facade = ::Articles::IndexFacade.new(category: params[:category])
  end
end
