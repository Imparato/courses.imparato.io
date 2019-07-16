# frozen_string_literal: true

ActiveAdmin.register Tag do
  permit_params do
    permitted = [:name]
    permitted << :other if params[:action] == "create" && current_admin_user
    permitted
  end
    filter :name, as: :select
end
