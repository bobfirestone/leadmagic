class AddTargetPerDayToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :target, :integer, :default => 0
    add_column :campaigns, :special, :string
    add_column :campaigns, :notes, :text
  end
end
