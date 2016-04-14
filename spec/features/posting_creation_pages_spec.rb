require 'rails_helper'

describe 'the job posting creation path', js: true do
  it 'allows a user to add a job posting' do
    user = create(:user)
    login_as(user)
    visit job_postings_path
    click_button 'New Posting'
    fill_in 'job_posting[url]', with: 'test_url.example.com'
    fill_in 'job_posting[position]', with: 'Testing'
    click_button 'Create Job posting'
    expect(page).to have_content("Posting Created Successfully")
  end

  it 'does not allow a user to create a posting with invalid parameters' do
    user = create(:user)
    login_as(user)
    visit job_postings_path
    click_button 'New Posting'
    fill_in 'job_posting[url]', with: nil
    fill_in 'job_posting[position]', with: nil
    click_button 'Create Job posting'
    expect(page).to_not have_content("Posting Created Successfully")
  end
end
