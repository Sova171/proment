# frozen_string_literal: true

require 'faker'

Article.delete_all

def create_article
  article = Article.create(
    title:       Faker::JapaneseMedia::OnePiece.character,
    description: Faker::JapaneseMedia::OnePiece.quote,
    category:    Article.categories.keys.sample
  )
  article.save!
end

12.times { create_article }
