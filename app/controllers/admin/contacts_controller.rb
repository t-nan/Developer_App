class Admin::ContactsController < Admin::ApplicationController

  def index
    @contacts=Contact.all.order(created_at: :desc)
  end

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
