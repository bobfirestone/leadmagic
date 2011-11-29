class Campaign < ActiveRecord::Base
  attr_accessible :name, :email, :script, :leads_count, :lead_price, :payout, :leads_purchased, :leads_credited, :email_text, :email_subject
  
  has_many :leads
  
end
