class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.string :subject
      t.text :message

      t.timestamps null: false
    end
  end
end
