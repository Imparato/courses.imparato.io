# frozen_string_literal: true

class CrossPagesController < ApplicationController
  before_action :find_cross_page, only: [:show, :filter_companies_by_tag]
  def show
    @companies = filter_companies_by_tag
  end

  def filter_companies_by_tag
    site = @cross_page.site
    companies = site.companies
    @companies = companies.select { |company| company.tags.include?(@cross_page.tags.first) }
    @companies = @companies.select { |company| company.active == true }
  end

  private

  def find_cross_page
    @cross_page = CrossPage.find_by(slug: params[:slug])
  end
end
