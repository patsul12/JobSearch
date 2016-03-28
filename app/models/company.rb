class Company < ActiveRecord::Base
  validates :name, presence: true
  has_many :job_applications 
end

