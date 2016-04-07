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
    click_button 'Create Application'
    expect(page).to have_content(Date.today);
  end

  it 'does not allow an application to be created with invalid parameters', js: true do
    10.times do
      create(:company)
    end
    rack_test_session_wrapper = Capybara.current_session.driver
    rack_test_session_wrapper.submit :post, job_applications_path, {job_application: {user_id: 1, company_id: 1}}
    expect(page).to have_content('Something went wrong')
  end
end
