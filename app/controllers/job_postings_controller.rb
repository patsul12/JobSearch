class JobPostingsController < ApplicationController
  def index
    @job_postings = JobPosting.where(user_id: current_user.id)
    @job_posting = JobPosting.new
  end

  def new
  end

  def create
    @job_posting = JobPosting.new(job_posting_params)
    if @job_posting.save
      flash.now[:notice] = "Posting Created Successfully"
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = "Something went wrong while saving your posting."
      redirect_to job_postings_path
    end
  end

private

  def job_posting_params
    params.require(:job_posting).permit(:url, :position, :user_id)
  end
end
