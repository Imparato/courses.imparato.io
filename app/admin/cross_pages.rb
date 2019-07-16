# frozen_string_literal: true

ActiveAdmin.register CrossPage do
  permit_params do
    permitted = [:slug, :meta_title, :meta_description, :title, :description, :banner, :active, :site_id, tag_ids: []]
    permitted << :other if params[:action] == "create" && current_admin_user
    permitted
  end

  index do
    selectable_column
    id_column
    column :site
    column :slug
    column :banner
    column :title
    column :description
    column :active
    column :meta_title
    column :meta_description
    column :tags do |cross_page|
      cross_page.tags.order("name ASC") do
        column(&:name)
      end
    end
    actions
  end

  show do
    attributes_table do
      row :site
      row :slug
      row :banner
      row :title
      row :description
      row :active
      row :meta_title
      row :meta_description
      attributes_table_for cross_page do
        row :tags
      end
    end
  end

  form do |f|
    f.inputs "Add/Edit Article" do
      f.input :site
      f.input :slug
      f.input :banner
      f.input :title
      f.input :description
      f.input :meta_title
      f.input :meta_description
      f.input :tags, as: :check_boxes
      f.input :active, as: :radio
    end
    actions
  end
  filter :site
  filter :slug
  filter :title
  filter :description
  filter :active
  filter :tags
end
