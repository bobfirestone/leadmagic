class AddEmailSubjectToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :email_subject, :string
  end
end
