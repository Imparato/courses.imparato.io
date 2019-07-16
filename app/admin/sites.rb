# frozen_string_literal: true

ActiveAdmin.register Site do
  actions :all, except: [ :destroy]

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
end
