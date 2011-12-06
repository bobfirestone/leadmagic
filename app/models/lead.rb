class Lead < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :company, :address, :city, :state, :zipcode, :phonenumber, :email, :user_id, :campaign_id, :notes, :best_time
  belongs_to :user, counter_cache: true
  belongs_to :campaign, counter_cache: true
  validates_presence_of :firstname, :lastname, :phonenumber, :email, :user_id, :campaign_id
  
  default_scope :order => 'leads.created_at DESC'
  
  scope :today, lambda { 
    where("leads.created_at > ?", Time.now - 12.hours )
  }  
  scope :week, lambda { 
    where("leads.created_at >= ?", Time.now - 7.day )
  }  
  scope :month, lambda { 
    where("leads.created_at >= ?", Time.now - 30.day )
  }  

end
