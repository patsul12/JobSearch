require 'rails_helper'

describe 'the application creation process' do
  it 'allows the user to create a new application' do
    user = create(:user)
    login_as(user, scope: :user )
    10.times do
      create(:company)
    end
    visit new_job_application_path
    click_button 'Create Application'
    expect(page).to have_content('open')
  end
end
