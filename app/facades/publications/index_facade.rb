# frozen_string_literal: true

module Publications
  class IndexFacade
    attr_reader :category

    DEFAULT_CATEGORY = 'training_materials'

    def initialize(category:)
      @category = category || DEFAULT_CATEGORY
    end

    def publications
      Publication.where(category: category)
    end

    def categories
      Publication.categories
    end
  end
end
