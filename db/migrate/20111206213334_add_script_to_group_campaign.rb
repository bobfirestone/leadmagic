class AddScriptToGroupCampaign < ActiveRecord::Migration
  def change
    add_column :group_campaigns, :script, :text
  end
end
