class AddCompanyNameToJobPostings < ActiveRecord::Migration
  def change
    add_column :job_postings, :company_name, :string
  end
end
