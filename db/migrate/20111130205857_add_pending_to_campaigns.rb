class AddPendingToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :pending, :boolean, :default => true
  end
end
