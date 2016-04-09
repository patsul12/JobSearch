require 'rails_helper'

describe 'the application edit path' do
  it 'allows a user to update an application from the index page', js: true do
    user = create(:user_with_job_applications)
    login_as(user)
    visit root_path
    click_link 'View Application'
    click_link 'Edit'
    fill_in 'job_application[job_applied_for]', with: 'Test Job'
    click_button 'Update Application'
    expect(page).to have_content("Application submitted on " + Date.today.to_s + " updated successfuly")
    expect(page).to have_content("Test Job")
  end
end
