class RemoveColumnFromEnquiry < ActiveRecord::Migration
  def change
    remove_column :enquiries, :messge, :text
  end
end
