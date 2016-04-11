FactoryGirl.define do
  factory :contact do
    user_id 1
    sequence(:company_id) { |n| n }
    first_name "Test"
    last_name "Contact"
    email_address "test@contact.com"
    phone_number "(555)555-5555"
    mailing_address "1234 Test Way"
  end
end
