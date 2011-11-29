class AddWelcomeEmailSwitchToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :welcome_email_switch, :boolean, :default => false
  end
end
