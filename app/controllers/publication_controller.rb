# frozen_string_literal: true

class PublicationController < ApplicationController
  before_action :set_publication, only: :pdf_download

  def index
    @facade = ::Publications::IndexFacade.new(category: params[:category])
  end

  def pdf_download
    if @publication.file.attached?
      redirect_to url_for(@publication.file), disposition: 'attachment'
    else
      flash[:error] = 'PDF file not found.'
      redirect_to root_path
    end
  end

  private

  def set_publication
    @publication = Publication.find(params[:id])
  end
end
