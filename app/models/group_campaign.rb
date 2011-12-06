class GroupCampaign < ActiveRecord::Base

  has_many :campaigns
  
  validates_presence_of :name, :subject, :body, :html_body

end
