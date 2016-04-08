FactoryGirl.define do
  factory :job_application do
    date_submitted '12/25/2015'
    status "open"
    sequence(:company_id) { |n| n }
    user_id 1 
  end
end
