class Lead < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :company, :address, :city, :state, :zipcode, :phonenumber, :email, :user_id, :campaign_id
  belongs_to :user, counter_cache: true
  belongs_to :campaign, counter_cache: true
  validates_presence_of :firstname, :lastname, :phonenumber, :user_id, :campaign_id
end
