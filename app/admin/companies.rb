# frozen_string_literal: true

ActiveAdmin.register Company do
  permit_params do
    permitted = [:name, :address, :active, :mail, :phone, :website, :description, :lat, :lng, :site_id, tag_ids: []]
    permitted << :other if params[:action] == "create" && current_admin_user
    permitted
  end

  index do
    selectable_column
    id_column
    column :site
    column :picture
    column :name
    column :address
    column :description
    column :mail
    column :phone
    column :website
    column :active
    column :tags do |company|
      company.tags.order("name ASC") do
        column(&:name)
      end
    end
    actions
  end

  show do
    attributes_table do
      row :site
      row :name
      row :picture
      row :address
      row :description
      row :mail
      row :phone
      row :website
      row :active
      attributes_table_for company do
        row :tags
      end
    end
  end

  form do |f|
    f.inputs "Add/Edit Company" do
      f.input :site
      f.input :name
      f.input :address
      f.input :description
      f.input :mail
      f.input :phone
      f.input :website
      f.input :lat
      f.input :lng
      f.input :tags, as: :check_boxes
      f.input :active, as: :radio
    end
    actions
  end
  filter :site
  filter :name
  filter :address
  filter :description
  filter :tags
end
