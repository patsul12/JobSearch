class AddDateSubmittedToApplication < ActiveRecord::Migration
  def change
    add_column :job_applications, :date_submitted, :string
  end
end
