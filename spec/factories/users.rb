FactoryGirl.define do
  factory :user do
    username 'test_user'
    first_name 'Test'
    last_name 'User'
    email 'test@example.com'
    password '123456789asdfj#$%%@#@!'

    factory :user_with_job_applications do
      transient do
        job_applications_count 1
      end
      after :create do |user, evaluator|
        create_list(:job_application, evaluator.job_applications_count, user: user)
      end
    end

    factory :user_with_contacts do
      transient do
        contacts_count 10
      end
      after :create do |user, evaluator|
        create_list(:contact, evaluator.contacts_count, user: user)
      end
    end

    factory :user_with_postings do
      transient do
        postings_count 10
      end

      after :createw do |user, evaluator|
        create_list(:job_posting, evaluator.postings_count, user: user)
      end
    end

    factory :user_with_application_and_contacts do
      transient do
        contacts_count 10
        job_applications_count 1
      end

      after :create do |user, evaluator|
        create_list(:contact, evaluator.contacts_count, user: user)
        create_list(:job_application, evaluator.job_applications_count, user: user)
      end
    end
  end
end
