# frozen_string_literal: true

module Articles
  class IndexFacade
    attr_reader :category

    DEFAULT_CATEGORY = 'announcement'

    def initialize(category:)
      @category = category || DEFAULT_CATEGORY
    end

    def articles
      Article.where(category: category)
    end

    def categories
      Article.categories
    end
  end
end
