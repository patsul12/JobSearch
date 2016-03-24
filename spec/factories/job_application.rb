FactoryGirl.define do
  factory :job_application do
    status "open"
    sequence(:company_id) { |n| n }
    sequence(:user_id) { |n| n }
  end
end
