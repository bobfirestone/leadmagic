class AddNameToGroupCampaigns < ActiveRecord::Migration
  def change
    add_column :group_campaigns, :name, :string
  end
end
