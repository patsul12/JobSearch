class CompaniesController < ApplicationController
  def create
    @company = Company.create(company_params)
    if @company.save
      flash[:notice] = "Company added successfuly"
      redirect_to new_job_application_path
    else
      flash[:alert] = "Errors occured while saving the company."
      redirect_to new_job_application_path
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :website)
  end
end
