# frozen_string_literal: true

class SitesController < ApplicationController
  before_action :set_domain, only: [:companies_in_city, :find_city_name_in_url, :show]
  def show
    # domain name to delete before action and retrieve url to uncoment
    # @domain_name = "coursdetheatremarseille.com"
    # @domain_name = request.original_url
    @site = Site.find_by(domain_name: @domain)
    @companies = Company.where(site: @site, active: true).page params[:page]
    @cross_pages = CrossPage.where(site: @site, active: true).includes(:tags).sort_by { |cp| cp.tags.first&.order || -1 }
  end

  def find_city_name_in_url
    match = /(coursdetheatre)(\w+)/.match(@domain)
    match[2]
  end

  def find_domain_from_url
    request.original_url.match(/coursde.*com/)[0]
  end

  helper_method :find_city_name_in_url

  private

  def set_domain
    # change also in contact controller and company controller
    @domain = find_domain_from_url
  end

end
