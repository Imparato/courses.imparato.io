# frozen_string_literal: true

class ContactsController < ApplicationController
  before_action :find_site

  def new
    @contact = Contact.new
  end

  def find_site
    @domain_name = "coursdetheatremarseille.com"
    @site = Site.find_by(domain_name: @domain_name)
  end

  def create
    @contact = Contact.new(contacts_params)
    if @contact.save
      redirect_to "/"
    else
      render action: "new", error: "Can't be sent"
    end
  end

  private

  def contacts_params
    params.require(:contact).permit(:user, :user_info, :email, :body)
  end
end
