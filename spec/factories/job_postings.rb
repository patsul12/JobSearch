FactoryGirl.define do
  factory :job_posting do
    sequence(:url) { |n| "www.#{n}example.com" }
    position "Test Posting"
    user_id 1
  end
end
