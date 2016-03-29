require 'rails_helper'

describe 'the user profile show path' do
  it 'allows the user to vies information regarding their account on a profile page' do
    user = create(:user_with_job_applications)
    login_as(user, scope: :user)
    visit user_path(user)
    expect(page).to have_content(user.username)
    expect(page).to have_content(user.first_name)
    expect(page).to have_content(user.last_name)
  end
end
