# frozen_string_literal: true

ActiveAdmin.register Gallery do
  permit_params :place, :theme, images: []

  index do
    selectable_column
    column :place
    column :theme
    column :images do |gallery|
      gallery.images.map { |image| image_tag(image, width: '50') }.join.html_safe
    end
    actions
  end

  show do
    attributes_table do
      row :place
      row :theme
      row :images do |gallery|
        gallery.images.map { |image| image_tag(image, width: '50') }.join.html_safe
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :place
      f.input :theme
      f.input :images, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

  filter :created_at
end
