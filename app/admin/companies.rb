# frozen_string_literal: true

ActiveAdmin.register Company do
  permit_params do
    permitted = [:name, :address, :mail, :description, :lat, :lng, :site_id]
    permitted << :other if params[:action] == "create" && current_admin_user
    permitted
  end
end
