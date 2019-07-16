# frozen_string_literal: true

ActiveAdmin.register CrossPage do
  permit_params do
    permitted = [:slug, :meta_title, :meta_description, :title, :description, :active, :site_id]
    permitted << :other if params[:action] == "create" && current_admin_user
    permitted
  end
end
