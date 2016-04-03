require 'rails_helper'

describe 'the application status update on the index page path', js: true do
  it 'allows a user to update the status of a given job application' do
    user = create(:user_with_job_applications)
    login_as(user)
    
  end
end
