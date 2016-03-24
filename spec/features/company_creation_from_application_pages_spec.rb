require 'rails_helper'

describe 'the company creation path through the new application route' do
  it 'allows a user to create a company if it does not exist in the database' do
    visit new_job_application_path
    fill_in :company_name, with: "Test Company"
    fill_in :company_address, with: "Test Address"
    fill_in :company_website, with: "testwebsite.com"
    find("input.company-submit").click
    save_and_open_page
    expect(page).to have_css("select#job_application_company_id")
  end
end
