class ContactsController < ApplicationController
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

private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email_address, :phone_number, :mailing_address, :company_id, :user_id)
  end
end
