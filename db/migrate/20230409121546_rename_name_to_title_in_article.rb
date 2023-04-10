# frozen_string_literal: true

class RenameNameToTitleInArticle < ActiveRecord::Migration[7.0]
  def change
    rename_column :articles, :name, :title
  end
end
