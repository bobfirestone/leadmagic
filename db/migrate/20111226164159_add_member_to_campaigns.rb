class AddMemberToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :member, :boolean, :default => false
  end
end
