ActiveAdmin.register CrossPage do
  actions :all
   permit_params :slug, :title, :description, :active, :meta_title, :meta_description, :site_id, :tag_ids => []

  index do
  id_column
  selectable_column
  column :site
  column :slug
  column :title
  column :description
  column :active
  column :meta_title
  column :meta_description
  column :tags do |cross_page|
    table_for cross_page.tags.order('name ASC') do
      column do |tag|
        tag.name
      end
     end
  end
end

show do
  attributes_table do
    row :site
    row :slug
    row :title
    row :description
    row :active
    row :meta_title
    row :meta_description
    table_for cross_page.tags.order('name ASC') do
      column "tags" do |tag|
        link_to tag.name, [:admin, tag]
      end
    end
  end
end

form do |f|
  f.inputs "Add/Edit Article" do
    f.input :site
    f.input :slug
    f.input :title
    f.input :description
    f.input :active
    f.input :meta_title
    f.input :meta_description
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
