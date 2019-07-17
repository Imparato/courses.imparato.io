# frozen_string_literal: true

class CompaniesController < ApplicationController
  before_action :find_site
  def new
    @company = Company.new
  end

  def find_site
    @domain_name = "coursdetheatremarseille.com"
    @site = Site.find_by(domain_name: @domain_name)
  end

  def create
    @company = Company.new(company_params_require)
    params[:company][:tag_ids].each do |tag_id|
      unless tag_id == ""
        tag = Tag.find(tag_id)
        @company.tags << tag
      end
    end
    @company.site = @site
    if @company.save
      redirect_to "/"
    else
      render action: "new", error: "Can't be saved"
    end
  end

  private

  def company_params_require
    params.require(:company).permit(:name, :address, :mail, :description, :tags, :active)
  end
end
