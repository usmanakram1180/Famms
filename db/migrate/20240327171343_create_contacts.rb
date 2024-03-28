class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :email_address
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
