FactoryGirl.define do
  factory :company do
    sequence(:name) { |n| "Test Company {n}" }    
    sequence(:address) { |n| "{n} Test Example Way" }
    sequence(:website) { |n| "{n}.example.com" }
  end
end
