class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :job_applications, :contacts do |t|
      # t.index [:job_application_id, :contact_id]
      # t.index [:contact_id, :job_application_id]
    end
  end
end
