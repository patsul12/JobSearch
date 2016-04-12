class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
      t.integer :user_id
      t.string :url
      t.string :position
      t.timestamps null: false
    end
  end
end
