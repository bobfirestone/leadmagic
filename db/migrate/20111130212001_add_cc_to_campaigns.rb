class AddCcToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :cc, :string
  end
end
