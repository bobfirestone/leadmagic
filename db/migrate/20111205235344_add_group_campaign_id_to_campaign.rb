class AddGroupCampaignIdToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :group_campaign_id, :integer
  end
end
