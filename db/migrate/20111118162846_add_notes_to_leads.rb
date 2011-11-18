class AddNotesToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :notes, :text
  end
end
