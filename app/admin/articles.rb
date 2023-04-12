# frozen_string_literal: true

ActiveAdmin.register Article do
  permit_params :title, :description, :category

  index do
    selectable_column
    column :title
    column :description
    column :category
    actions
  end

  show do
    attributes_table do
      row :title
      row :category
      row :description
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :category, as: :select, collection: Article.categories
      f.input :description
    end
    f.actions
  end

  filter :category, as: :select, collection: Article.categories
  filter :created_at
end
