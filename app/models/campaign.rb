class Campaign < ActiveRecord::Base
  attr_accessible :name, :email, :script, :leads_count, :lead_price, :payout, :leads_purchased, :leads_credited
  
  has_many :leads
  
end
