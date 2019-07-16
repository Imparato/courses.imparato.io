ActiveAdmin.register CompanyCreation do

# frozen_string_literal: true

  permit_params do
    permitted = [:name, :address, :mail, :description, :lat, :lng, :site_id, tag_ids: []]
    permitted << :other if params[:action] == "create" && current_admin_user
    permitted
  end

  index do
    selectable_column
    id_column
    column :name
    column :address
    column :description
    column :mail

    actions
  end

  show do
    attributes_table do
      row :name
      row :address
      row :description
      row :mail
end
  end

  form do |f|
    f.inputs "Add/Edit Article" do
      f.input :name
      f.input :address
      f.input :description
      f.input :mail
    end
    actions
  end
  filter :name
  filter :address
  filter :description


member_action :creatingcompany, method: :post do

  end

  controller do
    def creatingcompany
      @creating_company = CompanyCreation.find(params[:id])
      @created_company = Company.new(
        name: @creating_company.name,
        address: @creating_company.address,
        description: @creating_company.description,
        mail: @creating_company.mail,

        ).save!
    end


  end
action_item :add do
  link_to "Validate this Company", creatingcompany_admin_company_creation_path(@created_company), method: :post
  end
end

