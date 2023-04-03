# frozen_string_literal: true

class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :partners, :description, :en_description
    add_column :partners, :ua_description, :text
  end
end
