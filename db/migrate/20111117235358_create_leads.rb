class CreateLeads < ActiveRecord::Migration
  def self.up
    create_table :leads do |t|
      t.string :firstname
      t.string :lastname
      t.string :company
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phonenumber
      t.string :email
      t.integer :user_id
      t.integer :campaign_id
      t.timestamps
    end
  end

  def self.down
    drop_table :leads
  end
end
