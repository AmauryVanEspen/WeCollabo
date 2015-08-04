class AddColsToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :street, :string
    add_column :business_profiles, :suburb, :string
    add_column :business_profiles, :state, :string
    add_column :business_profiles, :postcode, :string
    add_column :business_profiles, :latitude, :float
    add_column :business_profiles, :longitude, :float
  end
end
