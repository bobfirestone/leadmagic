class AddBestTimeToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :best_time, :string
  end
end
