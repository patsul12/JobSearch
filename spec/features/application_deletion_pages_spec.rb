require 'rails_helper'

describe 'the application deletion path' do
  it 'allows a user to delete an application', js: true do
    user = create(:user_with_job_applications)
    login_as(user, scope: :user)
    visit root_path
    click_link "delete"
    expect(page).to_not have_css("div.job-application-tile")
  end
end
