class AddUserIdToApplications < ActiveRecord::Migration
  def change
    add_column :job_applications, :user_id, :integer
  end
end
