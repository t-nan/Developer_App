class ContactsController < ApplicationController


  def new
  end

  def create
    @contact=Contact.new(contact_params)

    if @contact.save
       redirect_to flats_path, notice: "Your contact has been saved!"
    else
       redirect_to flats_path, alert: "Contact not saved ! Make sure that the forms are filled in correctly."
    end

  end


  private

  def contact_params
    params.require(:contact).permit(:name, :surname, :phone ,:flat)
  end

end
