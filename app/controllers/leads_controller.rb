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
      LeadMailer.new_lead(@lead).deliver
      if @lead.campaign.welcome_email_switch == true
        LeadMailer.welcome_email(@lead).deliver
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
end