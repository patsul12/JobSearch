class AddAttachmentResumeToJobApplications < ActiveRecord::Migration
  def self.up
    change_table :job_applications do |t|
      t.attachment :resume
    end
  end

  def self.down
    remove_attachment :job_applications, :resume
  end
end
