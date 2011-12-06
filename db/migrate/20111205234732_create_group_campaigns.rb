class CreateGroupCampaigns < ActiveRecord::Migration
  def change
    create_table :group_campaigns do |t|
      t.string :subject
      t.text :body
      t.text :html_body

      t.timestamps
    end
  end
end
