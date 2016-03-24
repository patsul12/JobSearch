require 'rails_helper'

describe 'the job applications show path' do
  it 'shows all applications on the job application index page' do
    100.times do
      create(:job_application)
    end
    visit job_applications_path
    expect(page).to have_css("div.job-application-tile", count: 100)
  end
end
