class AddDefaultValuesToCampaigns < ActiveRecord::Migration
  def up
    change_column :campaigns, :lead_price, :float, :default => 0.0
    change_column :campaigns, :payout, :float, :default => 0.0
  end
end
