ActiveAdmin.register Company do
  permit_params :name, :address, :description, :mail, :lat, :lng, :tag_ids => []

  index do
  selectable_column
  id_column
  column :name
  column :address
  column :description
  column :mail
  column :lat
  column :lng
  column :tags do |company|
    table_for company.tags.order('name ASC') do
      column do |tag|
        tag.name
      end
     end
  end
end

show do
  attributes_table do
    row :name
    row :address
    row :description
    row :mail
    row :lat
    row :lng
    table_for company.tags.order('name ASC') do
      column "tags" do |tag|
        link_to tag.name, [:admin, tag]
      end
    end
  end
end

form do |f|
  f.inputs "Add/Edit Article" do
    f.input :name
    f.input :address
    f.input :description
    f.input :mail
    f.input :lat
    f.input :lng
    f.input :tags, :as => :check_boxes
  end
  actions
end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
end
