# frozen_string_literal: true

module Galleries
  class IndexFacade
    def galleries
      @galleries ||= Gallery.all.order(created_at: :desc)
    end
  end
end
