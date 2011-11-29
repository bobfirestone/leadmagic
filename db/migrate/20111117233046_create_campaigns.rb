class CreateCampaigns < ActiveRecord::Migration
  def self.up
    create_table :campaigns do |t|
      t.string :name
      t.string :email
      t.text :script
      t.integer :leads_count, default: 0
      t.float :lead_price
      t.float :payout
      t.timestamps
    end
  end

  def self.down
    drop_table :campaigns
  end
end
