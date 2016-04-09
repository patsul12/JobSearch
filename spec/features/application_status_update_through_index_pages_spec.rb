require 'rails_helper'

describe 'the application status update on the index page path', js: true do
  before :each do
    user = create(:user_with_job_applications)
    login_as(user)
  end

  it 'allows a user to update the status of a given job application', js: true do
    visit root_path
    select 'closed', from: 'job_application[status]'
    visit root_path
    expect(page).to have_css('#job_application_status option[selected]', text: 'closed')
  end
end
