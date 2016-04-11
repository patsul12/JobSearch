class ContactsController < ApplicationController
  def new
    respond_to do |format|
      format.js
    end
  end

  def Create
    @contact = current_user.contacts.create(contact_params)
    if @contact.save
      respond_to do |format|
        format.js
      end
    else
      binding.pry
    end
  end

private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email_address, :phone_number, :mailing_address, :company_id, :user_id)
  end
end
