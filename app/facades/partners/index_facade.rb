# frozen_string_literal: true

module Partners
  class IndexFacade
    def partners
      @partners ||= Partner.all
    end
  end
end
