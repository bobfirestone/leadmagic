class LeadMailer < ActionMailer::Base
  default from: "info@mainstreetchamber.net"
  
  def new_lead(lead)
    @lead = lead
    mail(:to => "#{lead.campaign.email}", :cc => "info@mainstreetchamber.net", :subject => "A new lead for you...")
  end
  
  def welcome_email(lead)
    @lead = lead
    mail(:to => "#{lead.firstname} #{lead.lastname} <#{lead.email}>", :subject => "#{lead.campaign.email_subject}")
  end
  
end
