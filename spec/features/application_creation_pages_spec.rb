require 'rails_helper'

describe 'the application creation process' do
  before :each do
    user = create(:user)
    login_as(user, scope: :user)
  end

  it 'allows the user to create a new application', js: true do
    10.times do
      create(:company)
    end
    visit root_path
    click_link "New Application"
    fill_in 'job_application[job_applied_for]', with: 'Junior Developer'
    click_button 'Create Application'
    expect(page).to have_content(Date.today);
  end

  it 'does not allow an application to be created with invalid parameters', js: true do
    visit root_path
    click_link "New Application"
    fill_in 'job_application[date_submitted]', with: nil
    click_button "Create Application"
    expect(page).to have_content('Something went wrong')
  end
end
