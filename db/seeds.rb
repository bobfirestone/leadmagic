# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Admin User
u = User.create(name: "admin", email:"admin@example.com", password: "password", admin: true)

#Agent Users
(1..3).each do |u|
  u = User.create(name: "Agent#{u}", email: "agent#{u}@example.com", password: "password")
end

#Campaigns
(1..10).each do |c|
  c = Campaign.create(name: "Campaign-#{c}", email: "campaign#{c}@example.com", 
    script: "This is the script for campaign #{c}", lead_price: 28.00, payout: 3.00,
    leads_purchased: 10, active: true)
end

#leads
(1..300).each do |l|
  camp = rand(10)+1
  user = rand(4)+1
  l = Lead.create(firstname: "First#{l}", lastname: "Last#{l}", email: "lead#{l}@example.com",
    phonenumber: "555-555-5555", campaign_id: camp, user_id: user)
end