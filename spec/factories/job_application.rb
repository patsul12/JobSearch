FactoryGirl.define do
  factory :job_application do
    status "open"
    sequence(:company_id) { |n| n }
    user_id 1 
  end
end
