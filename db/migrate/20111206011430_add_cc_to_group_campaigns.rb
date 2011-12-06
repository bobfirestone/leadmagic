class AddCcToGroupCampaigns < ActiveRecord::Migration
  def change
    add_column :group_campaigns, :cc, :string
  end
end
