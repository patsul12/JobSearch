FactoryGirl.define do
  factory :job_application do
    job_applied_for 'Junior Developer'
    date_submitted '12/25/2015'
    status "open"
    sequence(:company_id) { |n| n }
    user_id 1
    factory :job_application_with_company do
      transient do
        company_count 1
      end

      after :create do |job_application, evaluator|
        create_list(:company, evaluator.company_count, id: job_application.id)
      end
    end
  end
end
