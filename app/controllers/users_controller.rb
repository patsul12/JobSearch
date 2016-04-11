class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  before_action :authenticate_user!
  def show
  end

  def contacts
    @contact = Contact.new
    @contacts = Contact.where(user_id: current_user.id)
    @companies = Company.all
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
