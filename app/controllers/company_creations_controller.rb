class CompanyCreationsController < ApplicationController
  def new
    @company_creation = CompanyCreation.new
  end

def create
  @company_creation = CompanyCreation.new(companycreation_params)

  if @company_creation.save
    redirect_to "/"
  else
    render "new"
  end
  end

  private

  def companycreation_params
    params.require(:company_creation).permit(:name, :address, :mail, :description, :city)
  end
end
