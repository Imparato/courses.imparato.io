# frozen_string_literal: true

ActiveAdmin.register Company do
  permit_params do
    permitted = [:name, :address, :mail, :description, :lat, :lng, :site_id, tag_ids: []]
    permitted << :other if params[:action] == "create" && current_admin_user
    permitted
  end

  index do
    selectable_column
    id_column
    column :site
    column :name
    column :address
    column :description
    column :mail
    column :lat
    column :lng
    column :tags do |company|
      table_for company.tags.order("name ASC") do
        column(&:name)
      end
    end
    actions
  end

  show do
    attributes_table do
      row :site
      row :name
      row :address
      row :description
      row :mail
      row :lat
      row :lng
      table_for company.tags.order("name ASC") do
        column "tags" do |tag|
          link_to tag.name, [:admin, tag]
        end
      end
    end
  end

  form do |f|
    f.inputs "Add/Edit Article" do
      f.input :site
      f.input :name
      f.input :address
      f.input :description
      f.input :mail
      f.input :lat
      f.input :lng
      f.input :tags, as: :check_boxes
    end
    actions
  end
  filter :site
  filter :name
  filter :address
  filter :description
  filter :tags
end
