require 'rails_helper'

describe 'the job applications show path' do
  it 'shows all applications on the job application index page' do
    user = create(:user)
    login_as(user, scope: :user)
    100.times do
      create(:job_application, user_id: user.id)
    end
    visit job_applications_path
    expect(page).to have_css("a.job-application-tile", count: 100)
  end
end
