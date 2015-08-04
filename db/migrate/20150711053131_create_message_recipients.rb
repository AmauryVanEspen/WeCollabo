class CreateMessageRecipients < ActiveRecord::Migration
  def change
    create_table :message_recipients do |t|
      t.references :user, index: true, foreign_key: true
      t.references :message, index: true, foreign_key: true
      t.boolean :read

      t.timestamps null: false
    end
  end
end
