# frozen_string_literal: true

ActiveAdmin.register Partner do
  permit_params :name, :en_description, :ua_description

  index do
    selectable_column
    column :name
    column :en_description
    column :ua_description
    actions
  end

  show do
    attributes_table do
      row :name
      row :en_description
      row :ua_description
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :en_description
      f.input :ua_description
    end
    f.actions
  end

  filter :created_at
end
