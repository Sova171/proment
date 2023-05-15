# frozen_string_literal: true

ActiveAdmin.register Publication do
  permit_params :title, :file, :category

  index do
    selectable_column
    column :title
    column :category
    actions
  end

  show do
    attributes_table do
      row :title
      row :category
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :category, as: :select, collection: Publication.categories
      f.input :file, as: :file
    end
    f.actions
  end

  filter :category, as: :select, collection: Article.categories
  filter :created_at
  
end
