# frozen_string_literal: true

ActiveAdmin.register Site do
  actions :all, except: [:destroy]

  permit_params do
    permitted = [:name, :domain_name, :meta_title, :meta_description, :banner, :title, :description, :active, :analytics]
    permitted << :other if params[:action] == "create" && current_admin_user
    permitted
  end
  filter :name
  filter :domain_name
  filter :active
  filter :description
  filter :title

  index do
    selectable_column
    id_column
    column :name
    column :domain_name
    column :banner
    column :title
    column :description
    column :meta_title
    column :meta_description
    column :analytics
    actions
  end

  show do
    attributes_table do
      row :name
      row :domain_name
      row :banner
      row :title
      row :description
      row :meta_title
      row :meta_description
      row :analytics
    end
  end

  form do |f|
    f.inputs "Add/Edit Site" do
      f.input :name
      f.input :domain_name
      f.input :banner
      f.input :title
      f.input :description
      f.input :meta_title
      f.input :meta_description
      f.input :analytics
      f.input :active, as: :radio
    end
    actions
  end
end
