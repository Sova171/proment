# frozen_string_literal: true

module Abouts
  class IndexFacade
    def partners
      @partners ||= Partner.all
    end
  end
end
