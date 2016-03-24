class JobApplication < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  validates :status, presence: true
end
