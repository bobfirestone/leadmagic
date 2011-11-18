class AddLeadsCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :leads_count, :integer, default: 0
  end
end
