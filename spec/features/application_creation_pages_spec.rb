require 'rails_helper'

describe 'the application creation process' do
  it 'allows the user to create a new application' do
    visit new_job_application_path
    fill_in :job_application_status, with: 'open'
    click_button 'Create Application'
    expect(page).to have_content('open')
  end
end
