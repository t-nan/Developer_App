class ContactsController < ApplicationController

  def new
  end

  def create
    @contact=Contact.new(contact_params)
     if @contact.save
      redirect_to flats_path
    end
  end


  private

  def contact_params
    params.require(:contact).permit(:name, :surname, :phone ,:flat)
  end

end
