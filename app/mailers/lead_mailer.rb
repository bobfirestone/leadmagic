class LeadMailer < ActionMailer::Base
  default from: "info@mainstreetchamber.net"
  
  def new_lead(lead)
    @lead = lead
    if lead.campaign.cc.nil?
      mail(:to => "#{lead.campaign.email}", :cc => "info@mainstreetchamber.net", :subject => "A new lead for you...")
    else
      mail(:to => "#{lead.campaign.email}", :cc => ["info@mainstreetchamber.net", "#{lead.campaign.cc}"], :subject => "A new lead for you...")
    end

  end
  
  def welcome_email(lead)
    @lead = lead
    if lead.campaign.cc.nil?
      mail(:to => "#{lead.firstname} #{lead.lastname} <#{lead.email}>", :subject => "#{lead.campaign.email_subject}")
    else
      mail(:to => "#{lead.firstname} #{lead.lastname} <#{lead.email}>", :cc => "#{lead.campaign.cc}", :subject => "#{lead.campaign.email_subject}")
    end
  end
  
end
