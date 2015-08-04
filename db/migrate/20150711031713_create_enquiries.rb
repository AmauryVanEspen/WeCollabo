class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :email, null: false
      t.string :enquiry_type
      t.text :message
      t.string :phone

      t.timestamps null: false
    end
  end
end
