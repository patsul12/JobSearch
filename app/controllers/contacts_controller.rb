class ContactsController < ApplicationController
  before_action :set_contact, only: [:destroy, :edit]
  before_action :authenticate_user!
  def new
    respond_to do |format|
      format.js
    end
  end

  def create
    @user = current_user
    @contact = @user.contacts.new(contact_params)
    if @contact.save
      respond_to do |format|
        format.js
      end
    else
      redirect_to root_path
    end
  end

  def edit
    @current_contact = Contact.find(params[:id])
    @companies = Company.all
    respond_to do |format|
      format.js
    end
  end

  def update
    @contact = Contact.find(params[:contact_id])
    @contacts = current_user.contacts.order(updated_at: "asc")
    if @contact.update(form_tag_params)
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = "Something went wrong while updating the contact"
      redirect_to user_contacts_url(current_user)
    end
  end

  def destroy
    if @contact.destroy
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = "Something went wrong deleting your contact"
      redirect_to user_contacts_path(current_user)
    end
  end

private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email_address, :phone_number, :mailing_address, :company_id, :user_id)
  end

  def form_tag_params
    params.permit(:first_name, :last_name, :email_address, :phone_number, :mailing_address, :company_id, :user_id)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
