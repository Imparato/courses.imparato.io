# frozen_string_literal: true

class CompaniesController < ApplicationController
  before_action :find_site
  def new
    @company = Company.new
    @site = find_site
  end

  def find_site
    @domain_name = request.original_url.match(/coursde.*\.com/)[0]
    # @domain_name = "coursdetheatremarseille.com"
    @site = Site.find_by(domain_name: @domain_name)
  end

  def create
    @company = Company.new(company_params)
    @site = find_site
    @company.site = @site
    params[:company][:tag_ids].each do |tag_id|
      unless tag_id == ""
        tag = Tag.find(tag_id)
        @company.tags << tag
      end
    end
    if @company.save
      redirect_to root_path, notice: "Votre cours a été bien soumis."
    else
      render action: "new", error: "Can't be saved"
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :mail, :phone, :website, :description, :tags, :active, :picture)
  end
end
