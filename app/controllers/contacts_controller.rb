class ContactsController < ApplicationController

  before_action :authenticate_user!

  def new
  end

  def create
    @contact=Contact.new(contact_params)
    @contact.save
      redirect_to flats_path
  end


  private

  def contact_params
    params.require(:contact).permit(:name, :surname, :phone ,:flat)
  end

end
