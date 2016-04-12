class JobPostingsController < ApplicationController
  def index
    @postings = JobPosting.where(user_id: current_user.id)
    @posting = JobPosting.new
  end

  def new
  end

  def create
    @posting = JobPosting.new(job_posting_params)
    if @posting.save
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
    params.require(:job_posting).permit(:url, :position)
  end
end
