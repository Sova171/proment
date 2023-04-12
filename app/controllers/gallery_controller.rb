# frozen_string_literal: true

class GalleryController < ApplicationController
  def index
    @facade = ::Galleries::IndexFacade.new
  end

  private

  def gallery_params
    params.require(:gallery).permit(:theme, :place, images: [])
  end
end
