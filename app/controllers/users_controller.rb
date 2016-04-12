class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  def contacts
    @contact = Contact.new
    @contacts = Contact.where(user_id: current_user.id).order(last_name: 'asc')
    @companies = Company.all
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
