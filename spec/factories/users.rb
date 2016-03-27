FactoryGirl.define do
  factory :user do
    username 'test_user'
    first_name 'Test'
    last_name 'User'
    email 'test@example.com'
    password '123456789asdfj#$%%@#@!'    
  end
end
