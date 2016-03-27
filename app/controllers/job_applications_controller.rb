class JobApplicationsController < ApplicationController
  before_action :set_application, only: [:show]
  before_action :authenticate_user!
  autocomplete :company, :name

  def index
    @job_applications = JobApplication.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @job_application = JobApplication.new
    @companies = Company.all
    if @companies.first == nil
      flash[:alert] = "Looks like no companies are in the database yet. Create one to continue"
      @companies = nil
    end
    @company = Company.new
  end

  def create
    @job_application = JobApplication.create(job_application_params)
    if @job_application.save
      flash[:notice] = "Application Succesfully Created"
      redirect_to job_application_path(@job_application)
    else
      flash[:alert] = "Something went wrong"
      render "new"
    end
  end

  private

  def set_application
    @job_application = JobApplication.find(params[:id])
  end

  def job_application_params
    params.require(:job_application).permit(:user_id, :company_id, :status, :date_submitted, :resume)
  end
end
