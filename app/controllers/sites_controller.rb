# frozen_string_literal: true

class SitesController < ApplicationController
  # before_action :retrieve_site_url, only: [:companies_in_city, :find_city_name_in_url]
  def show
    # domain name to delete
    @domain_name = "coursdetheatremarseille.com"
    @site = Site.find_by(domain_name: @domain_name)
    @companies = Company.where(site: @site)
    @cross_pages = CrossPage.where(site: @site, active: true)
  end

  def retrieve_site_url
    # @domain_name1 = request.original_url
  end

  def find_city_name_in_url
    match = /(coursdetheatre)(\w+)/.match(@domain_name)
    match[2]
  end
end
