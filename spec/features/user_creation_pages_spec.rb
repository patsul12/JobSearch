require 'rails_helper'

describe 'the user sign up path' do
  it 'allows a user to create an account' do
    test_password = 'asjdfhakj43257$(&00)'
    visit new_user_registration_path 
    fill_in 'user[username]', with: 'test_user'
    fill_in 'user[email]', with: 'test@example.com'
    fill_in 'user[password]', with: test_password 
    fill_in 'user[password_confirmation]', with: test_password
    click_button 'Sign up'
    expect(page).to have_content('test_user')
  end
end
