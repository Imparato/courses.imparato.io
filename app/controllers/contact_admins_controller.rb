class ContactAdminsController < ApplicationController

   def new
    @contact_admin = ContactAdmin.new
  end

def create
  @contact_admin = ContactAdmin.new(contactadmin_params)

  if @contact_admin.save
    redirect_to "/"
  else
    render "new"
  end
end

  private

  def contactadmin_params
    params.require(:contact_admin).permit(:user, :contact, :object, :body)
  end
end
