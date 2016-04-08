class JobApplication < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  validates :status, :company_id, :date_submitted, :job_applied_for, presence: true
  has_attached_file :resume
  has_attached_file :cover_letter
  do_not_validate_attachment_file_type :resume
  do_not_validate_attachment_file_type :cover_letter
  has_and_belongs_to_many :contacts
end
