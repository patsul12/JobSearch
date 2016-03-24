class CreateApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
