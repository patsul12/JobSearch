class User < ActiveRecord::Base
  has_many :job_applications
  validates :username, presence: true
end
