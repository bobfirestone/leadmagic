require 'csv'

class LeadsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @leads = Lead.all
  end

  def show
    @lead = Lead.find(params[:id])
  end

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(params[:lead])
    if @lead.save
      if @lead.campaign.active?
        LeadMailer.new_lead(@lead).deliver
        if @lead.campaign.group_campaign_id.present?
          LeadMailer.group_email(@lead).deliver
        # Need if statement check for group_campaign
        elsif @lead.campaign.welcome_email_switch == true
          LeadMailer.welcome_email(@lead).deliver
        end
      end
      redirect_to campaign_path(@lead.campaign.id), :notice => "Successfully created lead."
    else
      render :action => 'new'
    end
  end

  def edit
    @lead = Lead.find(params[:id])
  end

  def update
    @lead = Lead.find(params[:id])
    if @lead.update_attributes(params[:lead])
      redirect_to @lead, :notice  => "Successfully updated lead."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy
    redirect_to leads_url, :notice => "Successfully destroyed lead."
  end

  def memberlist
    @leads = Lead.all
    @outfile = "leadmagic_new_members_" + Time.now.strftime("%m-%d-%Y") + ".csv"
  
    csv_data = CSV::generate do |csv|
      csv << [
      "Last Name",
      "First Name",
      "Email",
      "Phone Number",
      "Company",
      "Address",
      "City",
      "State",
      "Zip",
      "Ambassador",
      "Campaign"
      ]
      @leads.each do |lead|
        csv << [
        lead.lastname,
        lead.firstname,
        lead.email,
        lead.phonenumber,
        lead.company,
        lead.address,
        lead.city,
        lead.state,
        lead.zipcode,
        lead.user.name,
        lead.campaign.name
        ]
      end
    end
    send_data csv_data, :type => 'text/csv; charset=iso-8859-1; header=present',
                        :disposition => "attachment; filename=#{@outfile}"

    flash[:notice] = "Export complete!"
  end
end

