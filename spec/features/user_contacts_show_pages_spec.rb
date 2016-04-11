require 'rails_helper'

describe 'the user contacts show path' do
  it 'allows a user to view all of their current contacts' do
    user = create(:user_with_contacts)
    login_as(user)
    visit user_contacts_path(user)
    expect(page).to have_content('Test Contact')
  end
end
