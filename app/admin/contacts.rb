ActiveAdmin.register Contact do
# frozen_string_literal: true
  actions :all

  permit_params do
    permitted = [:user, :user_info, :email, :body]
  end
  filter :user
  filter :user_info
  filter :email
  filter :body

  index do
    selectable_column
    id_column
    column :user
    column :user_info
    column :email
    column :body
    actions
  end

  show do
    attributes_table do
      row :user
      row :user_info
      row :email
      row :body
    end
  end

  form do |f|
    f.inputs "Add/Edit Site" do
      f.input :user
      f.input :user_info
      f.input :email
      f.input :body
    end
    actions
  end
end
