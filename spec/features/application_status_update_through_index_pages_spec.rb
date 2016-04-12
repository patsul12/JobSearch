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

  it 'wont allow a user to update an application with invalid parameters', js: true do
    visit root_path
    click_link 'View Application'
    save_and_open_page
    click_link 'Edit'
    fill_in :job_applied_for, with: nil
    click_link 'Update Application'
    expect(page).to_not have_content("View Application")
  end
end
