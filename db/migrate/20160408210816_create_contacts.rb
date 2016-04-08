class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone_number
      t.string :mailing_address
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
