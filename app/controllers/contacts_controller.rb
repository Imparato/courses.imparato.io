# frozen_string_literal: true

class ContactsController < ApplicationController
  before_action :find_site

  def new
    @contact = Contact.new
    @site = find_site
  end

  def find_site
    # @domain_name = "coursdetheatremarseille.com"
    @domain_name = request.original_url.match(/coursde.*com/)[0]
    @site = Site.find_by(domain_name: @domain_name)
  end

  def create
    @contact = Contact.new(contacts_params)
    @site = find_site
    @contact.site = @site
    if @contact.save
      redirect_to root_path, notice: "Votre message a été bien transmis."
    else
      render action: "new", error: "Une erreur est survenue, veuillez réessayer"
    end
  end

  private

  def contacts_params
    params.require(:contact).permit(:user, :email, :body, :read)
  end
end
