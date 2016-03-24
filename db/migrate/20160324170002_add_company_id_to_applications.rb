class AddCompanyIdToApplications < ActiveRecord::Migration
  def change
    add_column :job_applications, :company_id, :integer
  end
end
