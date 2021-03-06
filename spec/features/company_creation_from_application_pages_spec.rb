require 'rails_helper'

describe 'the company creation path through the new application route' do
  before :each do
    user = create(:user)
    login_as(user, scope: :user)
    create(:company)
  end

  it 'allows a user to create a company if it does not exist in the database', js: true do
    visit root_path
    click_link "New Application"
    page.find("#new-company-toggle").click
    fill_in :company_name, with: "Test Company"
    fill_in :company_address, with: "Test Address"
    fill_in :company_website, with: "testwebsite.com"
    find("input.company-submit").click
    expect(page).to have_css("select#job_application_company_id")
    expect(page).to have_content("Company added successfully")
  end

  it 'doesnt allow a company to be created with invalid parameters', js: true do
    visit root_path
    click_link "New Application"
    page.find("#new-company-toggle").click
    click_button 'Create Application'
    expect(page).to_not have_content("Company added successfully")
  end
end
