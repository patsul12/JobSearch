class Company < ActiveRecord::Base
  has_many :job_applications 
end

