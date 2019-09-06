ActiveAdmin.register Contact do
# frozen_string_literal: true
  actions :all

  permit_params do
    permitted = [:user, :email, :body]
  end
  filter :site
  filter :created_at
  filter :user
  filter :email
  filter :body

  index do
    selectable_column
    id_column
    column :site
    column :user
    column :email
    column :body
    column :created_at
    column :read
    actions
  end

  show do
    attributes_table do
      row :site
      row :user
      row :email
      row :body
      row :created_at
      row :read
    end
  end

  form do |f|
    f.inputs "Add/Edit Site" do
      f.input :read
    end
    actions
  end
end
