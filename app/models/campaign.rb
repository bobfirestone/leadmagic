class Campaign < ActiveRecord::Base
  attr_accessible :name, :email, :script, :leads_count, :lead_price, :payout, :leads_purchased, :leads_credited, :email_text, :email_subject, :welcome_email_switch, :cc, :active, :pending
  
  has_many :leads
  
end
