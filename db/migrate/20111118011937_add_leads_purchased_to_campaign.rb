class AddLeadsPurchasedToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :leads_purchased, :integer, default: 0
    add_column :campaigns, :leads_credited, :integer, default: 0
  end
end
