class AddJobAppliedForToJobApplications < ActiveRecord::Migration
  def change
    add_column :job_applications, :job_applied_for, :string
  end
end
