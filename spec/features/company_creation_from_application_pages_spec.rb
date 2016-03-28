require 'rails_helper'

describe 'the company creation path through the new application route' do
  before :each do
    user = create(:user)
    login_as(user, scope: :user)
  end

  it 'allows a user to create a company if it does not exist in the database', js: true do
    visit new_job_application_path
    page.find("#new-company-toggle").click
    fill_in :company_name, with: "Test Company"
    fill_in :company_address, with: "Test Address"
    fill_in :company_website, with: "testwebsite.com"
    find("input.company-submit").click
    expect(page).to have_css("select#job_application_company_id")
    expect(page).to have_content("Company added successfuly")
  end

  it 'doesnt allow a company to be created with invalid parameters', js: true do
    visit new_job_application_path
    page.find("#new-company-toggle").click
    find("input.company-submit").click
    expect(page).to_not have_content("Company added successfuly")
  end
end
