class Contact < ActiveRecord::Base
  has_and_belongs_to_many :job_applications
  belongs_to :user
end
