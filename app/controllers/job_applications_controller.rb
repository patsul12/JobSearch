class JobApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :destroy, :update, :edit, :add_contact]
  before_action :authenticate_user!, except: [:index]
  skip_before_filter :verify_authenticity_token, only: :update

  def index
    if current_user
      @job_applications = JobApplication.where(user_id: current_user.id).order(date_submitted: "desc")
      @job_application = JobApplication.new
    end
  end

  def show
    respond_to do |format|
      format.html { render '_show' }
      format.js
    end
  end

  def new
    @job_application = JobApplication.new
    @companies = Company.all
    if @companies.first == nil
      @companies = nil
    end
    @company = Company.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @job_application = JobApplication.create(job_application_params)
    @job_applications = JobApplication.where(user_id: current_user.id)
    if @job_application.save
      respond_to do |format|
        format.js
      end
    else
      flash.now[:alert] = "Something went wrong"
    end
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    if @job_application.update_attributes(job_application_params)
      flash.now[:notice] = "Application submitted on " + @job_application.date_submitted + " updated successfuly"
      respond_to do |format|
        format.js
      end
    else
      render 'index'
    end
  end

  def destroy
    if @job_application.destroy
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = "Something went wrong deleting the application"
      redirect_to job_applications_path
    end
  end

  def add_contact
    @contact = Contact.find(params[:contact_id])
    @job_application.contacts << @contact unless @job_application.contacts.include?(@contact)
    respond_to do |format|
      format.js
    end
  end

  private

  def set_application
    @job_application = JobApplication.find(params[:id])
  end

  def job_application_params
    params.require(:job_application).permit(:user_id, :company_id, :status, :date_submitted, :resume, :job_applied_for)
  end
end
