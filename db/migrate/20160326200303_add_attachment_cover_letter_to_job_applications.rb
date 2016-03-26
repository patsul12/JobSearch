class AddAttachmentCoverLetterToJobApplications < ActiveRecord::Migration
  def self.up
    change_table :job_applications do |t|
      t.attachment :cover_letter
    end
  end

  def self.down
    remove_attachment :job_applications, :cover_letter
  end
end
