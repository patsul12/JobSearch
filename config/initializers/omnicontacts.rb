require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, ENV['GMAIL_CLIENT_ID'], ENV['GMAIL_CLIENT_SECRET']
  importer :linkedin, ENV['LINKEDIN_CLIENT_ID'], ENV['LINKEDIN_CLIENT_SECRET'], {state: ENV['LINKEDIN_CLIENT_STATE'], scope: 'r_basicprofile'}
end
