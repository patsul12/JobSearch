class CompaniesController < ApplicationController
  def new
    @company = Company.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @company = Company.create(company_params)
    @job_application = JobApplication.new
    @job_applications = JobApplication.where(user_id: current_user.id).order(date_submitted: "desc")
    if @company.save
      flash.now[:notice] = "Company added successfully"
      @companies = Company.all
      respond_to do |format|
        format.js
      end
    else
      flash.now[:alert] = "Errors occured while saving the company."
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :website)
  end
end
