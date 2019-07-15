class SitesController < ApplicationController

  def companies_in_city
    @companies = Company.where(address: "33 Rue Ferrari, 13005 Marseille")
  end
end
