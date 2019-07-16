# frozen_string_literal: true

ActiveAdmin.register CrossPage do
  permit_params do
    permitted = [:slug, :meta_title, :meta_description, :title, :description, :active, :site_id, tag_ids: []]
    permitted << :other if params[:action] == "create" && current_admin_user
    permitted
  end

  index do
    id_column
    selectable_column
    column :site
    column :slug
    column :title
    column :description
    column :active
    column :meta_title
    column :meta_description
    column :tags do |cross_page|
      table_for cross_page.tags.order("name ASC") do
        column(&:name)
      end
    end
    actions
  end

  show do
    attributes_table do
      row :site
      row :slug
      row :title
      row :description
      row :active
      row :meta_title
      row :meta_description
      table_for cross_page.tags.order("name ASC") do
        column "tags" do |tag|
          link_to tag.name, [:admin, tag]
        end
      end
    end
  end

  form do |f|
    f.inputs "Add/Edit Article" do
      f.input :site
      f.input :slug
      f.input :title
      f.input :description
      f.input :active
      f.input :meta_title
      f.input :meta_description
      f.input :tags, as: :check_boxes
    end
    actions
  end
end
