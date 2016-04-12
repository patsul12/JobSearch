require 'rails_helper'

describe 'the job posting index path' do
  it 'allows a user to view all current job postings they are tracking on a single page' do
    user = create(:user)
    10.times do
      create(:job_posting, user_id: user.id)
    end
    login_as(user)
    visit job_postings_path
    expect(page).to have_css(".job-posting-tile", count: 10);
  end
end
