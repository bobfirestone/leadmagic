ActionMailer::Base.smtp_settings = {
  :address              => "mail.mainstreetchamber.net",
  :port                 => 2626,
  :domain               => "mainstreetchamber.net",
  :user_name            => "info+mainstreetchamber.net",
  :password             => "Mainstreet2011",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
