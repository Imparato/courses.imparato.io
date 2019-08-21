# frozen_string_literal: true

class SitesController < ApplicationController
  # before_action :retrieve_site_url, only: [:companies_in_city, :find_city_name_in_url]
  def show
    # domain name to delete
    @domain_name = "coursdetheatremarseille.com"
    @site = Site.find_by(domain_name: @domain_name)
    @companies = Company.where(site: @site, active: true).page params[:page]
    @cross_pages = CrossPage.where(site: @site, active: true)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
    :autolink => true, :space_after_headers => true)
    @description = markdown.render("This is *bongos*, indeed.").html_safe
  end

  def retrieve_site_url
    # change also in contact controller and company controller
    # @domain_name = request.original_url
  end

  def find_city_name_in_url
    match = /(coursdetheatre)(\w+)/.match(@domain_name)
    match[2]
  end

  helper_method :find_city_name_in_url
end
